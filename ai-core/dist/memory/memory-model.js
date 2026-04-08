export function createDefaultLongTermPreferenceMemory() {
    return {
        favoriteModes: [],
        typicalEntryMoods: [],
        preferredArtifactStyles: [],
    };
}
export function createDefaultUniverseMemory() {
    return {
        activeArcIds: [],
        iconicMoments: [],
        recurringSquadRoles: {},
        rivalryTraces: [],
        majorCallbacks: [],
    };
}
export function createDefaultSafetyMemory() {
    return {
        roastIntensityCap: 2,
        blockedTopics: [],
        sensitivePatterns: [],
        antiToxicitySignals: [],
    };
}
export function createDefaultMemoryState() {
    return {
        recentInteraction: [],
        longTermPreference: createDefaultLongTermPreferenceMemory(),
        universe: createDefaultUniverseMemory(),
        safety: createDefaultSafetyMemory(),
    };
}
export function appendRecentInteractionTrace(state, trace, maxItems = 5) {
    const nextRecent = [trace, ...state.recentInteraction].slice(0, maxItems);
    return {
        ...state,
        recentInteraction: nextRecent,
    };
}
