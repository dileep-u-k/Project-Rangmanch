import type { FullMemoryState, RecentInteractionTrace } from "../types/memory.js";
export interface ContinuityBundle {
    recentTrace?: RecentInteractionTrace;
    activeHookSeed?: string;
    preferredStyleHints: string[];
    continuityRelevant: boolean;
}
export declare function resolveContinuityBundle(state: FullMemoryState): ContinuityBundle;
