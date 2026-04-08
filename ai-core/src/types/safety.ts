export type RoastIntensityCap = 0 | 1 | 2 | 3;

export type SafetyDecision = "allow" | "soften" | "redirect" | "block";

export interface SafetyFlags {
  hasHumiliationRisk: boolean;
  hasIdentityTargetingRisk: boolean;
  hasManipulativeDependencyRisk: boolean;
  hasToxicRepetitionRisk: boolean;
  hasSensitiveMemoryRisk: boolean;
}

export interface SafetyAssessment {
  decision: SafetyDecision;
  reasons: string[];
  transformedText?: string;
}

export interface ToneGuardInput {
  text: string;
  roastIntensityCap: RoastIntensityCap;
  social: boolean;
}

export interface RoastGuardInput {
  text: string;
  roastIntensityCap: RoastIntensityCap;
  targetCount: number;
}

export interface ContentGuardInput {
  text: string;
  blockedTopics: string[];
  sensitivePatterns: string[];
}