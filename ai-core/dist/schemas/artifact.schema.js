import { z } from "zod";
export const artifactOutputSchema = z.object({
    artifactType: z.enum([
        "episode_poster",
        "verdict_card",
        "chaos_ranking",
        "squad_result_card",
        "next_act_card",
        "dramatic_summary_card",
    ]),
    artifactHeadline: z.string().min(1).max(120),
    artifactSubheadline: z.string().min(1).max(160),
    artifactResultCore: z.string().min(1).max(180),
    artifactCaption: z.string().min(1).max(180),
    artifactStyleTag: z.string().min(1).max(60),
});
