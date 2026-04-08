import type {
  FullMemoryState,
  LongTermPreferenceMemory,
  RecentInteractionTrace,
  SafetyMemory,
  UniverseMemory,
} from "../types/memory.js";

export function createDefaultLongTermPreferenceMemory(): LongTermPreferenceMemory {
  return {
    favoriteModes: [],
    typicalEntryMoods: [],
    preferredArtifactStyles: [],
  };
}

export function createDefaultUniverseMemory(): UniverseMemory {
  return {
    activeArcIds: [],
    iconicMoments: [],
    recurringSquadRoles: {},
    rivalryTraces: [],
    majorCallbacks: [],
  };
}

export function createDefaultSafetyMemory(): SafetyMemory {
  return {
    roastIntensityCap: 2,
    blockedTopics: [],
    sensitivePatterns: [],
    antiToxicitySignals: [],
  };
}

export function createDefaultMemoryState(): FullMemoryState {
  return {
    recentInteraction: [],
    longTermPreference: createDefaultLongTermPreferenceMemory(),
    universe: createDefaultUniverseMemory(),
    safety: createDefaultSafetyMemory(),
  };
}

export function appendRecentInteractionTrace(
  state: FullMemoryState,
  trace: RecentInteractionTrace,
  maxItems = 5,
): FullMemoryState {
  const nextRecent = [trace, ...state.recentInteraction].slice(0, maxItems);

  return {
    ...state,
    recentInteraction: nextRecent,
  };
}