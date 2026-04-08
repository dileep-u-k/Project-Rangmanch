import { z } from "zod";
export declare const squadMemberRoleSchema: z.ZodObject<{
    memberLabel: z.ZodString;
    assignedRole: z.ZodString;
}, "strip", z.ZodTypeAny, {
    memberLabel: string;
    assignedRole: string;
}, {
    memberLabel: string;
    assignedRole: string;
}>;
export declare const squadOutputSchema: z.ZodObject<{
    squadTitle: z.ZodString;
    squadFrame: z.ZodString;
    memberRoles: z.ZodArray<z.ZodObject<{
        memberLabel: z.ZodString;
        assignedRole: z.ZodString;
    }, "strip", z.ZodTypeAny, {
        memberLabel: string;
        assignedRole: string;
    }, {
        memberLabel: string;
        assignedRole: string;
    }>, "many">;
    groupDynamicSummary: z.ZodString;
    verdictOrRanking: z.ZodString;
    socialPayoffLine: z.ZodString;
    artifactSeed: z.ZodString;
    continuitySeed: z.ZodString;
}, "strip", z.ZodTypeAny, {
    continuitySeed: string;
    artifactSeed: string;
    squadTitle: string;
    squadFrame: string;
    memberRoles: {
        memberLabel: string;
        assignedRole: string;
    }[];
    groupDynamicSummary: string;
    verdictOrRanking: string;
    socialPayoffLine: string;
}, {
    continuitySeed: string;
    artifactSeed: string;
    squadTitle: string;
    squadFrame: string;
    memberRoles: {
        memberLabel: string;
        assignedRole: string;
    }[];
    groupDynamicSummary: string;
    verdictOrRanking: string;
    socialPayoffLine: string;
}>;
export type SquadOutputSchema = z.infer<typeof squadOutputSchema>;
