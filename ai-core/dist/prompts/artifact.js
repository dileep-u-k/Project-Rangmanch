import { buildSystemInstruction } from "./base.js";
export function buildArtifactGenerationPrompt() {
    return buildSystemInstruction({
        systemPurpose: "Convert a completed episode or squad result into a compact, portable RANGMANCH artifact output.",
        toneRules: [
            "compact",
            "visually legible",
            "emotionally clear",
            "socially portable",
            "screenshot-friendly",
        ],
        safetyRules: [
            "do not intensify unsafe mockery",
            "do not expose sensitive specifics unnecessarily",
            "avoid bloated or confusing phrasing",
        ],
        formattingRules: [
            "must satisfy the artifact schema exactly",
            "headline should be punchy",
            "caption should be compact",
            "optimize for card rendering",
        ],
        fallbackBehavior: "If the source result is noisy, simplify into a clean verdict-card style artifact with one strong emotional takeaway.",
    });
}
