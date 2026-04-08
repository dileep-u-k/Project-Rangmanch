export function assessContentSafety(input) {
    const lower = input.text.toLowerCase();
    const reasons = [];
    for (const topic of input.blockedTopics) {
        if (lower.includes(topic.toLowerCase())) {
            reasons.push(`blocked topic matched: ${topic}`);
        }
    }
    for (const pattern of input.sensitivePatterns) {
        if (lower.includes(pattern.toLowerCase())) {
            reasons.push(`sensitive pattern matched: ${pattern}`);
        }
    }
    if (reasons.length > 0) {
        return {
            decision: "block",
            reasons,
        };
    }
    return {
        decision: "allow",
        reasons: [],
    };
}
