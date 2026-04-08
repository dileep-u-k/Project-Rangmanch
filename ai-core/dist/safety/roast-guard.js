export function assessRoastSafety(input) {
    const reasons = [];
    if (input.roastIntensityCap === 0) {
        reasons.push("roast intensity disabled");
        return {
            decision: "redirect",
            reasons,
        };
    }
    if (input.targetCount > 1 && input.text.toLowerCase().includes("worst")) {
        reasons.push("pile-on style escalation risk");
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
