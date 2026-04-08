import type { FullMemoryState, LongTermPreferenceMemory, RecentInteractionTrace, SafetyMemory, UniverseMemory } from "../types/memory.js";
export declare function createDefaultLongTermPreferenceMemory(): LongTermPreferenceMemory;
export declare function createDefaultUniverseMemory(): UniverseMemory;
export declare function createDefaultSafetyMemory(): SafetyMemory;
export declare function createDefaultMemoryState(): FullMemoryState;
export declare function appendRecentInteractionTrace(state: FullMemoryState, trace: RecentInteractionTrace, maxItems?: number): FullMemoryState;
