import { classifyContext } from "./context-classifier.js";
import type { ContextClassificationInput } from "../types/mood.js";
import type { FullMemoryState } from "../types/memory.js";
export interface OutputOrchestrationResult {
    classifiedContext: ReturnType<typeof classifyContext>;
    selectedFrame: string;
    companionStateMode: string;
    continuityRelevant: boolean;
    continuityHints: string[];
}
export declare function orchestrateOutput(input: ContextClassificationInput, memoryState: FullMemoryState): OutputOrchestrationResult;
