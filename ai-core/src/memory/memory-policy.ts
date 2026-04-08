import type {
  FullMemoryState,
  LongTermPreferenceMemory,
  RecentInteractionTrace,
} from "../types/memory.js";
import type { ModeId } from "../types/common.js";
import type { MoodId } from "../types/mood.js";

export function shouldPromoteFavoriteMode(
  memory: LongTermPreferenceMemory,
  modeId: ModeId,
): boolean {
  const occurrences = memory.favoriteModes.filter((mode) => mode === modeId).length;
  return occurrences < 3;
}

export function updateFavoriteModes(
  memory: LongTermPreferenceMemory,
  modeId: ModeId,
): LongTermPreferenceMemory {
  if (!shouldPromoteFavoriteMode(memory, modeId)) {
    return memory;
  }

  return {
    ...memory,
    favoriteModes: [...memory.favoriteModes, modeId],
  };
}

export function updateTypicalEntryMoods(
  memory: LongTermPreferenceMemory,
  moodId: MoodId,
): LongTermPreferenceMemory {
  const next = [...memory.typicalEntryMoods, moodId].slice(-10);
  return {
    ...memory,
    typicalEntryMoods: next,
  };
}

export function getActiveHookCandidates(
  state: FullMemoryState,
): RecentInteractionTrace[] {
  return state.recentInteraction.filter((trace) => Boolean(trace.continuitySeed));
}

export function applyRecentTraceToPreferenceMemory(
  state: FullMemoryState,
  trace: RecentInteractionTrace,
): FullMemoryState {
  return {
    ...state,
    longTermPreference: updateTypicalEntryMoods(
      updateFavoriteModes(state.longTermPreference, trace.modeId),
      trace.moodId,
    ),
  };
}