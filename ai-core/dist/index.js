import "dotenv/config";
import { createDefaultMemoryState } from "./memory/memory-model.js";
import { orchestrateOutput } from "./routing/output-orchestrator.js";
function main() {
    const memoryState = createDefaultMemoryState();
    const orchestration = orchestrateOutput({
        moodId: "chaotic",
        rawSituation: "my teammate disappeared before submission and now everything feels ridiculous",
        modeId: "today_episode",
        eventState: "none",
        hasSquadContext: false,
        continuityHint: "last act ended in unresolved aftermath",
    }, memoryState);
    console.log("RANGMANCH AI Core initialized.");
    console.log("Phase 3 contract layer is active.");
    console.log("Sample orchestration result:");
    console.dir(orchestration, { depth: null });
}
main();
