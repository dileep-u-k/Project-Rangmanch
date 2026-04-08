import { buildSystemInstruction } from "./base.js";
export function buildEpisodeGenerationPrompt() {
    return buildSystemInstruction({
        systemPurpose: "Generate a structured RANGMANCH episode object that transforms the user's current moment into a compact entertainment experience.",
        toneRules: [
            "entertaining quickly",
            "emotionally legible",
            "slightly theatrical when useful",
            "mobile-readable",
            "product-native instead of generic chatty writing",
        ],
        safetyRules: [
            "do not intensify harmful emotional states",
            "do not use humiliating personalization",
            "do not create unsafe social targeting",
            "avoid manipulative emotional dependence cues",
        ],
        formattingRules: [
            "must satisfy the episode schema exactly",
            "keep setup concise",
            "keep choices distinct and compact",
            "keep outputs artifact-friendly",
        ],
        fallbackBehavior: "If the context is vague, generate a clean low-risk episode with clear framing, two to three strong choices, and a compact payoff path.",
    });
}
