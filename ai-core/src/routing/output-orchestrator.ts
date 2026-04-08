import { resolveCompanionState } from "./companion-state-resolver.js";
import { selectFrame } from "./frame-selector.js";
import { classifyContext } from "./context-classifier.js";
import { resolveContinuityBundle } from "../memory/continuity-resolver.js";
import type { ContextClassificationInput } from "../types/mood.js";
import type { FullMemoryState } from "../types/memory.js";

export interface OutputOrchestrationResult {
  classifiedContext: ReturnType<typeof classifyContext>;
  selectedFrame: string;
  companionStateMode: string;
  continuityRelevant: boolean;
  continuityHints: string[];
}

export function orchestrateOutput(
  input: ContextClassificationInput,
  memoryState: FullMemoryState,
): OutputOrchestrationResult {
  const classifiedContext = classifyContext(input);
  const continuityBundle = resolveContinuityBundle(memoryState);

  const selectedFrame = selectFrame({
    moodId: input.moodId,
    frameCandidates: classifiedContext.recommendedFrameCandidates,
    recentInteraction: memoryState.recentInteraction,
  });

  const companionState = resolveCompanionState({
    social:
      classifiedContext.socialContextType === "group" ||
      classifiedContext.socialContextType === "event_crowd",
    continuityRelevant: continuityBundle.continuityRelevant,
    roastEligible:
      memoryState.safety.roastIntensityCap > 0 &&
      classifiedContext.socialContextType === "group",
    highEnergyMoment:
      classifiedContext.emotionalFlavor === "celebratory" ||
      classifiedContext.absurdityLevel === "high",
    decompressionMoment:
      input.moodId === "decompression" || input.moodId === "overthinking",
  });

  return {
    classifiedContext,
    selectedFrame,
    companionStateMode: companionState.mode,
    continuityRelevant: continuityBundle.continuityRelevant,
    continuityHints: [
      ...(continuityBundle.activeHookSeed ? [continuityBundle.activeHookSeed] : []),
      ...continuityBundle.preferredStyleHints,
    ],
  };
}