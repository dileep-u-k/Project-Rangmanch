import type { EventState, ISODateString, ModeId } from "./common.js";
import type { MoodId, FrameType } from "./mood.js";
export type MemoryLayer = "session" | "recent_interaction" | "long_term_preference" | "universe" | "safety";
export interface SessionMemory {
    modeId: ModeId;
    moodId: MoodId;
    selectedFrame: FrameType;
    situationSummary: string;
    castSummary: string[];
    selectedChoiceIds: string[];
    artifactSeed?: string;
    hookSeed?: string;
}
export interface RecentInteractionTrace {
    id: string;
    createdAt: ISODateString;
    title: string;
    modeId: ModeId;
    moodId: MoodId;
    frameType: FrameType;
    outcomeSummary: string;
    artifactType?: string;
    continuitySeed?: string;
}
export interface LongTermPreferenceMemory {
    preferredHumorFlavor?: string;
    preferredDramaticIntensity?: "subtle" | "moderate" | "bold";
    preferredPacing?: "fast" | "fast_medium" | "medium";
    favoriteModes: ModeId[];
    typicalEntryMoods: MoodId[];
    preferredInteractionLength?: "short" | "short_medium";
    preferredArtifactStyles: string[];
}
export interface UniverseMemory {
    activeSeasonFlavor?: string;
    activeArcIds: string[];
    iconicMoments: string[];
    recurringSquadRoles: Record<string, string>;
    rivalryTraces: string[];
    majorCallbacks: string[];
    activeEventState?: EventState;
}
export interface SafetyMemory {
    roastIntensityCap: 0 | 1 | 2 | 3;
    blockedTopics: string[];
    sensitivePatterns: string[];
    antiToxicitySignals: string[];
}
export interface FullMemoryState {
    session?: SessionMemory;
    recentInteraction: RecentInteractionTrace[];
    longTermPreference: LongTermPreferenceMemory;
    universe: UniverseMemory;
    safety: SafetyMemory;
}
