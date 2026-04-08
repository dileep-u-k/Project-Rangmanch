import { COMPANION_STATES } from "../config/companion-states.js";
export function resolveCompanionMode(input) {
    if (input.continuityRelevant)
        return "continuity_keeper";
    if (input.decompressionMoment)
        return "chill_recap";
    if (input.social && input.roastEligible)
        return "judge_verdict";
    if (input.social)
        return "hype";
    if (input.highEnergyMoment)
        return "narrator";
    return "host";
}
export function resolveCompanionState(input) {
    const mode = resolveCompanionMode(input);
    return COMPANION_STATES[mode];
}
