import { z } from "zod";
export declare const artifactOutputSchema: z.ZodObject<{
    artifactType: z.ZodEnum<["episode_poster", "verdict_card", "chaos_ranking", "squad_result_card", "next_act_card", "dramatic_summary_card"]>;
    artifactHeadline: z.ZodString;
    artifactSubheadline: z.ZodString;
    artifactResultCore: z.ZodString;
    artifactCaption: z.ZodString;
    artifactStyleTag: z.ZodString;
}, "strip", z.ZodTypeAny, {
    artifactType: "chaos_ranking" | "episode_poster" | "verdict_card" | "squad_result_card" | "next_act_card" | "dramatic_summary_card";
    artifactHeadline: string;
    artifactSubheadline: string;
    artifactResultCore: string;
    artifactCaption: string;
    artifactStyleTag: string;
}, {
    artifactType: "chaos_ranking" | "episode_poster" | "verdict_card" | "squad_result_card" | "next_act_card" | "dramatic_summary_card";
    artifactHeadline: string;
    artifactSubheadline: string;
    artifactResultCore: string;
    artifactCaption: string;
    artifactStyleTag: string;
}>;
export type ArtifactOutputSchema = z.infer<typeof artifactOutputSchema>;
