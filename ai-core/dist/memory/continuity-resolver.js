export function resolveContinuityBundle(state) {
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
