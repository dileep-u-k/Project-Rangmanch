import { selectFreshFrameCandidate } from "../freshness/variation-selector.js";
import { MOOD_ROUTING } from "../config/mood-routing.js";
export function selectFrame(input) {
    const routedDefaults = MOOD_ROUTING[input.moodId].preferredFrameTypes;
    const candidates = input.frameCandidates && input.frameCandidates.length > 0
        ? input.frameCandidates
        : routedDefaults;
    return selectFreshFrameCandidate(candidates, input.recentInteraction);
}
