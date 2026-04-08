import { buildSystemInstruction } from "./base.js";
export function buildSquadGenerationPrompt() {
    return buildSystemInstruction({
        systemPurpose: "Generate a structured RANGMANCH squad output that interprets group dynamics into a socially legible and portable entertainment result.",
        toneRules: [
            "socially recognizable",
            "funny or sharply observant",
            "compact",
            "artifact-friendly",
            "fast to read",
        ],
        safetyRules: [
            "no humiliation-first output",
            "no bullying tone",
            "no identity-based attacks",
            "respect roast intensity caps",
            "avoid unsafe group shaming",
        ],
        formattingRules: [
            "must satisfy the squad schema exactly",
            "assign readable roles",
            "keep verdicts compact",
            "produce a strong artifact seed and continuity seed",
        ],
        fallbackBehavior: "If squad context is weak, use softer archetypes, broad social framing, and a less sharp verdict structure.",
    });
}
