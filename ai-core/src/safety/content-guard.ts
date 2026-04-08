import type { ContentGuardInput, SafetyAssessment } from "../types/safety.js";

export function assessContentSafety(input: ContentGuardInput): SafetyAssessment {
  const lower = input.text.toLowerCase();
  const reasons: string[] = [];

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