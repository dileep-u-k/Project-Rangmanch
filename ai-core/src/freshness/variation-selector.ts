import { isFrameOverused } from "./repetition-detector.js";
import type { FrameType } from "../types/mood.js";
import type { RecentInteractionTrace } from "../types/memory.js";

export function selectFreshFrameCandidate(
  candidates: FrameType[],
  recent: RecentInteractionTrace[],
): FrameType {
  for (const candidate of candidates) {
    if (!isFrameOverused(recent, candidate)) {
      return candidate;
    }
  }

  return candidates[0] ?? "episode";
}