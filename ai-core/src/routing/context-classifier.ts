import { contextClassificationInputSchema } from "../schemas/input.schema.js";
import type { CompanionMode } from "../types/companion.js";
import type {
  ArtifactPotential,
  ContextClassificationInput,
  FrameType,
  SituationInterpretation,
} from "../types/mood.js";

function detectConflict(raw: string): SituationInterpretation["primaryConflictType"] {
  const text = raw.toLowerCase();

  if (text.includes("disappeared") || text.includes("ghosted")) {
    return "coordination_failure";
  }
  if (text.includes("bored")) {
    return "boredom";
  }
  if (text.includes("birthday") && (text.includes("collapse") || text.includes("ruin"))) {
    return "celebration_disruption";
  }
  if (text.includes("overthink") || text.includes("spiral")) {
    return "overthinking";
  }
  if (text.includes("match") || text.includes("vs")) {
    return "event_escalation";
  }
  if (text.includes("chaos") || text.includes("mess") || text.includes("ridiculous")) {
    return "social_chaos";
  }

  return "none";
}

function detectSocialContext(
  raw: string,
  hasSquadContext: boolean,
): SituationInterpretation["socialContextType"] {
  const text = raw.toLowerCase();

  if (hasSquadContext) return "group";
  if (text.includes("we ") || text.includes("friends") || text.includes("group")) return "group";
  if (text.includes("match night") || text.includes("festival")) return "event_crowd";

  return "solo";
}

function detectAbsurdity(raw: string): SituationInterpretation["absurdityLevel"] {
  const text = raw.toLowerCase();

  if (
    text.includes("ridiculous") ||
    text.includes("chaos") ||
    text.includes("collapsed") ||
    text.includes("disappeared")
  ) {
    return "high";
  }
  if (text.includes("dramatic") || text.includes("funny") || text.includes("awkward")) {
    return "medium";
  }

  return "low";
}

function detectEmotionalFlavor(raw: string): SituationInterpretation["emotionalFlavor"] {
  const text = raw.toLowerCase();

  if (text.includes("frustrated") || text.includes("annoyed")) return "frustrated";
  if (text.includes("celebrate") || text.includes("festival") || text.includes("birthday")) {
    return "celebratory";
  }
  if (text.includes("spiral") || text.includes("overthink")) return "spiraling";
  if (text.includes("dramatic")) return "dramatic";
  if (text.includes("bored")) return "restless";
  if (text.includes("tired") || text.includes("sleep")) return "low_energy";

  return "playful";
}

function detectEventRelevance(raw: string): SituationInterpretation["eventRelevance"] {
  const text = raw.toLowerCase();

  if (text.includes("birthday")) return "personal";
  if (text.includes("festival")) return "festive";
  if (text.includes("match") || text.includes("vs")) return "live_event";
  if (text.includes("friends") || text.includes("group")) return "social";

  return "none";
}

function inferContextType(
  moodId: ContextClassificationInput["moodId"],
  socialContextType: SituationInterpretation["socialContextType"],
  conflictType: SituationInterpretation["primaryConflictType"],
): SituationInterpretation["inferredContextType"] {
  if (socialContextType === "group" && conflictType === "social_chaos") return "social_chaos";
  if (socialContextType === "group") return "social_idle";
  if (moodId === "decompression") return "solo_decompression";
  if (moodId === "overthinking") return "late_night_drift";
  if (moodId === "bored") return "solo_bored";
  if (moodId === "chaotic") return "solo_chaotic";

  return "freshness_seek";
}

function detectArtifactPotential(
  socialContextType: SituationInterpretation["socialContextType"],
  absurdityLevel: SituationInterpretation["absurdityLevel"],
  eventRelevance: SituationInterpretation["eventRelevance"],
): ArtifactPotential {
  if (eventRelevance !== "none") return "high";
  if (socialContextType === "group" && absurdityLevel !== "low") return "high";
  if (absurdityLevel === "medium") return "medium";
  return "low";
}

export function classifyContext(
  input: ContextClassificationInput,
): SituationInterpretation {
  const parsed = contextClassificationInputSchema.parse(input);

  const primaryConflictType = detectConflict(parsed.rawSituation);
  const socialContextType = detectSocialContext(parsed.rawSituation, parsed.hasSquadContext);
  const absurdityLevel = detectAbsurdity(parsed.rawSituation);
  const emotionalFlavor = detectEmotionalFlavor(parsed.rawSituation);
  const eventRelevance = detectEventRelevance(parsed.rawSituation);
  const inferredContextType = inferContextType(
    parsed.moodId,
    socialContextType,
    primaryConflictType,
  );
  const artifactPotential = detectArtifactPotential(
    socialContextType,
    absurdityLevel,
    eventRelevance,
  );

  const recommendedMode =
    socialContextType === "group" ? "squad_mode" : parsed.modeId;

  const recommendedFrameCandidates: FrameType[] =
    socialContextType === "group"
      ? ["squad_saga", "chaos_ranking", "roast_court"]
      : ["episode", "dramatic_reveal", "recap"];

  const recommendedCompanionModes: CompanionMode[] =
    socialContextType === "group"
      ? ["judge_verdict", "hype"]
      : ["narrator", "host"];

  const continuityRelevance =
    parsed.continuityHint && parsed.continuityHint.trim().length > 0 ? "medium" : "low";

  return {
    primaryConflictType,
    socialContextType,
    absurdityLevel,
    emotionalFlavor,
    eventRelevance,
    recommendedMode,
    recommendedFrameCandidates,
    recommendedCompanionModes,
    continuityRelevance,
    artifactPotential,
    inferredContextType,
    supportingSignals: [
      `mood:${parsed.moodId}`,
      `conflict:${primaryConflictType}`,
      `social:${socialContextType}`,
      `event:${eventRelevance}`,
    ],
  };
}