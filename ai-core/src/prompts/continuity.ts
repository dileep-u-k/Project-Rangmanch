import { buildSystemInstruction } from "./base.js";

export function buildContinuityRecallPrompt(): string {
  return buildSystemInstruction({
    systemPurpose:
      "Recall the most relevant continuity traces, preference signals, and active hooks for the next RANGMANCH generation cycle.",
    toneRules: [
      "internal and structured",
      "compact",
      "continuity-aware",
      "signal-focused",
    ],
    safetyRules: [
      "exclude overly sensitive callback candidates",
      "exclude unsafe social memory from reuse",
      "avoid invasive familiarity",
    ],
    formattingRules: [
      "return only useful recall signals",
      "prioritize active hooks and recent traces",
      "keep the recall bundle compact",
    ],
    fallbackBehavior:
      "If continuity context is weak, return a minimal bundle that preserves freshness and low-pressure continuity.",
  });
}