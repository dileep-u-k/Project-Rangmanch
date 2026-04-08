import { z } from "zod";
export const returnHookOutputSchema = z.object({
    hookHeadline: z.string().min(1).max(120),
    hookType: z.enum([
        "next_act",
        "unresolved_aftermath",
        "squad_recurrence",
        "role_continuation",
        "dramatic_tease",
        "world_progression",
    ]),
    hookLine: z.string().min(1).max(180),
    hookEnergy: z.string().min(1).max(40),
    returnReason: z.string().min(1).max(140),
});
