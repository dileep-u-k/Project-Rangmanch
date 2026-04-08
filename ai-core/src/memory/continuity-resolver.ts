import type { FullMemoryState, RecentInteractionTrace } from "../types/memory.js";

export interface ContinuityBundle {
  recentTrace?: RecentInteractionTrace;
  activeHookSeed?: string;
  preferredStyleHints: string[];
  continuityRelevant: boolean;
}

export function resolveContinuityBundle(state: FullMemoryState): ContinuityBundle {
  const recentTrace = state.recentInteraction[0];
  const preferredStyleHints = [
    ...(state.longTermPreference.preferredHumorFlavor
      ? [state.longTermPreference.preferredHumorFlavor]
      : []),
    ...(state.longTermPreference.preferredDramaticIntensity
      ? [state.longTermPreference.preferredDramaticIntensity]
      : []),
  ];

  return {
    recentTrace,
    activeHookSeed: recentTrace?.continuitySeed,
    preferredStyleHints,
    continuityRelevant: Boolean(recentTrace?.continuitySeed),
  };
}