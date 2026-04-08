import { z } from "zod";
export declare const returnHookOutputSchema: z.ZodObject<{
    hookHeadline: z.ZodString;
    hookType: z.ZodEnum<["next_act", "unresolved_aftermath", "squad_recurrence", "role_continuation", "dramatic_tease", "world_progression"]>;
    hookLine: z.ZodString;
    hookEnergy: z.ZodString;
    returnReason: z.ZodString;
}, "strip", z.ZodTypeAny, {
    hookHeadline: string;
    hookType: "next_act" | "unresolved_aftermath" | "squad_recurrence" | "role_continuation" | "dramatic_tease" | "world_progression";
    hookLine: string;
    hookEnergy: string;
    returnReason: string;
}, {
    hookHeadline: string;
    hookType: "next_act" | "unresolved_aftermath" | "squad_recurrence" | "role_continuation" | "dramatic_tease" | "world_progression";
    hookLine: string;
    hookEnergy: string;
    returnReason: string;
}>;
export type ReturnHookOutputSchema = z.infer<typeof returnHookOutputSchema>;
