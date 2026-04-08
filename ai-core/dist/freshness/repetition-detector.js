import { FRESHNESS_POLICY } from "../config/freshness-policy.js";
export function countRecentFrameUsage(recent, frameType) {
    return recent.filter((trace) => trace.frameType === frameType).length;
}
export function isFrameOverused(recent, frameType) {
    return countRecentFrameUsage(recent, frameType) >= FRESHNESS_POLICY.maxSameFrameInShortHorizon;
}
