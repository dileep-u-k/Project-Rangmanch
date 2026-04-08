import { buildSystemInstruction } from "./base.js";
export function buildReturnHookPrompt() {
    return buildSystemInstruction({
        systemPurpose: "Generate a RANGMANCH continuity-aware return hook that makes the world feel alive and invites future re-entry.",
        toneRules: [
            "teasing",
            "continuity-aware",
            "playful",
            "lightly anticipatory",
            "not needy",
        ],
        safetyRules: [
            "no guilt-based return language",
            "no emotional pressure",
            "no manipulative attachment cues",
        ],
        formattingRules: [
            "must satisfy the hook schema exactly",
            "keep the hook short and mobile-friendly",
            "return reason must be clear and lightweight",
        ],
        fallbackBehavior: "If continuity context is weak, generate a light next-act invitation rather than a deep callback.",
    });
}
