import type {
  EnergyLevel,
  FamiliarityLevel,
  SocialSharpness,
  TheatricalIntensity,
} from "./common.js";

export type CompanionMode =
  | "host"
  | "narrator"
  | "hype"
  | "savage_commentator"
  | "judge_verdict"
  | "chill_recap"
  | "challenge_master"
  | "continuity_keeper";

export type CompanionStance =
  | "welcoming"
  | "observant"
  | "playful"
  | "theatrical"
  | "supportive_light"
  | "socially_sharp"
  | "continuity_inviting";

export interface CompanionState {
  mode: CompanionMode;
  stance: CompanionStance;
  energyLevel: EnergyLevel;
  theatricalIntensity: TheatricalIntensity;
  socialSharpness: SocialSharpness;
  familiarityLevel: FamiliarityLevel;
  lexicalStyle: string[];
  prohibitions: string[];
}

export interface CompanionStateResolutionInput {
  social: boolean;
  continuityRelevant: boolean;
  roastEligible: boolean;
  highEnergyMoment: boolean;
  decompressionMoment: boolean;
}

export interface CompanionPersonaSpec {
  stableTraits: string[];
  dynamicModes: CompanionMode[];
  defaultLexicalStyles: string[];
  hardSafetyConstraints: string[];
}