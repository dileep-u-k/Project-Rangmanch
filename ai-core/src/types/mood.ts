import type {
  ContextType,
  EnergyLevel,
  EventState,
  ModeId,
  SocialSharpness,
} from "./common.js";
import type { CompanionMode } from "./companion.js";

export type MoodId =
  | "bored"
  | "chaotic"
  | "savage"
  | "chill"
  | "dramatic"
  | "overthinking"
  | "squad_energy"
  | "festival_mode"
  | "match_night"
  | "decompression";

export type FrameType =
  | "episode"
  | "roast_court"
  | "squad_saga"
  | "challenge_arc"
  | "dramatic_reveal"
  | "survival_scene"
  | "cinematic_reinterpretation"
  | "cliffhanger_continuation"
  | "chaos_ranking"
  | "recap"
  | "comeback_arc"
  | "rivalry_scene";

export type ConflictType =
  | "none"
  | "coordination_failure"
  | "social_chaos"
  | "overthinking"
  | "event_escalation"
  | "celebration_disruption"
  | "boredom"
  | "identity_drama"
  | "momentum_drop";

export type SocialContextType = "solo" | "duo" | "group" | "event_crowd" | "unclear";

export type AbsurdityLevel = "low" | "medium" | "high";

export type EmotionalFlavor =
  | "playful"
  | "frustrated"
  | "celebratory"
  | "tense"
  | "spiraling"
  | "restless"
  | "dramatic"
  | "low_energy";

export type EventRelevance = "none" | "personal" | "social" | "live_event" | "festive";

export type ContinuityRelevance = "none" | "low" | "medium" | "high";

export type ArtifactPotential = "low" | "medium" | "high";

export interface MoodRoutingProfile {
  moodId: MoodId;
  preferredCompanionModes: CompanionMode[];
  preferredFrameTypes: FrameType[];
  energyLevel: EnergyLevel;
  socialSharpness: SocialSharpness;
  recommendedPacing: "fast" | "fast_medium" | "medium";
}

export interface SituationInterpretation {
  primaryConflictType: ConflictType;
  socialContextType: SocialContextType;
  absurdityLevel: AbsurdityLevel;
  emotionalFlavor: EmotionalFlavor;
  eventRelevance: EventRelevance;
  recommendedMode: ModeId;
  recommendedFrameCandidates: FrameType[];
  recommendedCompanionModes: CompanionMode[];
  continuityRelevance: ContinuityRelevance;
  artifactPotential: ArtifactPotential;
  inferredContextType: ContextType;
  supportingSignals: string[];
}

export interface ContextClassificationInput {
  moodId: MoodId;
  rawSituation: string;
  modeId: ModeId;
  eventState: EventState;
  hasSquadContext: boolean;
  continuityHint?: string;
}