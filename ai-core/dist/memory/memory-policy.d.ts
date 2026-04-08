import type { FullMemoryState, LongTermPreferenceMemory, RecentInteractionTrace } from "../types/memory.js";
import type { ModeId } from "../types/common.js";
import type { MoodId } from "../types/mood.js";
export declare function shouldPromoteFavoriteMode(memory: LongTermPreferenceMemory, modeId: ModeId): boolean;
export declare function updateFavoriteModes(memory: LongTermPreferenceMemory, modeId: ModeId): LongTermPreferenceMemory;
export declare function updateTypicalEntryMoods(memory: LongTermPreferenceMemory, moodId: MoodId): LongTermPreferenceMemory;
export declare function getActiveHookCandidates(state: FullMemoryState): RecentInteractionTrace[];
export declare function applyRecentTraceToPreferenceMemory(state: FullMemoryState, trace: RecentInteractionTrace): FullMemoryState;
