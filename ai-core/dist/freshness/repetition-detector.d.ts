import type { FrameType } from "../types/mood.js";
import type { RecentInteractionTrace } from "../types/memory.js";
export declare function countRecentFrameUsage(recent: RecentInteractionTrace[], frameType: FrameType): number;
export declare function isFrameOverused(recent: RecentInteractionTrace[], frameType: FrameType): boolean;
