import { isFrameOverused } from "./repetition-detector.js";
export function selectFreshFrameCandidate(candidates, recent) {
    for (const candidate of candidates) {
        if (!isFrameOverused(recent, candidate)) {
            return candidate;
        }
    }
    return candidates[0] ?? "episode";
}
