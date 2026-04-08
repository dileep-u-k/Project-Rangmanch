import type { MoodId, FrameType } from "../types/mood.js";
import type { RecentInteractionTrace } from "../types/memory.js";
export interface FrameSelectionInput {
    moodId: MoodId;
    frameCandidates?: FrameType[];
    recentInteraction: RecentInteractionTrace[];
}
export declare function selectFrame(input: FrameSelectionInput): FrameType;
