import { SAFETY_POLICY } from "../config/safety-policy.js";
export function assessTone(input) {
    const text = input.text.toLowerCase();
    const reasons = [];
    const hasHumiliationPattern = SAFETY_POLICY.blockedHumiliationPatterns.some((pattern) => text.includes(pattern));
    if (hasHumiliationPattern) {
        reasons.push("humiliation risk detected");
    }
    const hasDependencyPattern = SAFETY_POLICY.blockedDependencyPatterns.some((pattern) => text.includes(pattern));
    if (hasDependencyPattern) {
        reasons.push("manipulative dependency language detected");
    }
    if (input.roastIntensityCap === 0 && input.social && hasHumiliationPattern) {
        return {
            decision: "block",
            reasons,
        };
    }
    if (hasHumiliationPattern || hasDependencyPattern) {
        return {
            decision: "soften",
            reasons,
        };
    }
    return {
        decision: "allow",
        reasons: [],
    };
}
