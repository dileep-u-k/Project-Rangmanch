import { z } from "zod";
export const squadMemberRoleSchema = z.object({
    memberLabel: z.string().min(1).max(80),
    assignedRole: z.string().min(1).max(120),
});
export const squadOutputSchema = z.object({
    squadTitle: z.string().min(1).max(120),
    squadFrame: z.string().min(1).max(200),
    memberRoles: z.array(squadMemberRoleSchema).min(1).max(12),
    groupDynamicSummary: z.string().min(1).max(300),
    verdictOrRanking: z.string().min(1).max(200),
    socialPayoffLine: z.string().min(1).max(200),
    artifactSeed: z.string().min(1).max(120),
    continuitySeed: z.string().min(1).max(120),
});
