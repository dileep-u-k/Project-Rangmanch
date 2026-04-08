import { FRESHNESS_POLICY } from "../config/freshness-policy.js";
import type { FrameType } from "../types/mood.js";
import type { RecentInteractionTrace } from "../types/memory.js";

export function countRecentFrameUsage(
  recent: RecentInteractionTrace[],
  frameType: FrameType,
): number {
  return recent.filter((trace) => trace.frameType === frameType).length;
}

export function isFrameOverused(
  recent: RecentInteractionTrace[],
  frameType: FrameType,
): boolean {
  return countRecentFrameUsage(recent, frameType) >= FRESHNESS_POLICY.maxSameFrameInShortHorizon;
}