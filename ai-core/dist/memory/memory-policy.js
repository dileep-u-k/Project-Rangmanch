export function shouldPromoteFavoriteMode(memory, modeId) {
    const occurrences = memory.favoriteModes.filter((mode) => mode === modeId).length;
    return occurrences < 3;
}
export function updateFavoriteModes(memory, modeId) {
    if (!shouldPromoteFavoriteMode(memory, modeId)) {
        return memory;
    }
    return {
        ...memory,
        favoriteModes: [...memory.favoriteModes, modeId],
    };
}
export function updateTypicalEntryMoods(memory, moodId) {
    const next = [...memory.typicalEntryMoods, moodId].slice(-10);
    return {
        ...memory,
        typicalEntryMoods: next,
    };
}
export function getActiveHookCandidates(state) {
    return state.recentInteraction.filter((trace) => Boolean(trace.continuitySeed));
}
export function applyRecentTraceToPreferenceMemory(state, trace) {
    return {
        ...state,
        longTermPreference: updateTypicalEntryMoods(updateFavoriteModes(state.longTermPreference, trace.modeId), trace.moodId),
    };
}
