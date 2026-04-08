import { selectFreshFrameCandidate } from "../freshness/variation-selector.js";
import { MOOD_ROUTING } from "../config/mood-routing.js";
import type { MoodId, FrameType } from "../types/mood.js";
import type { RecentInteractionTrace } from "../types/memory.js";

export interface FrameSelectionInput {
  moodId: MoodId;
  frameCandidates?: FrameType[];
  recentInteraction: RecentInteractionTrace[];
}

export function selectFrame(input: FrameSelectionInput): FrameType {
  const routedDefaults = MOOD_ROUTING[input.moodId].preferredFrameTypes;
  const candidates = input.frameCandidates && input.frameCandidates.length > 0
    ? input.frameCandidates
    : routedDefaults;

  return selectFreshFrameCandidate(candidates, input.recentInteraction);
}