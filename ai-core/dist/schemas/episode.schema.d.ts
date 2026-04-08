import { z } from "zod";
export declare const choiceOutputSchema: z.ZodObject<{
    choiceId: z.ZodString;
    choiceLabel: z.ZodString;
    choiceFlavor: z.ZodString;
    expectedPathTone: z.ZodString;
}, "strip", z.ZodTypeAny, {
    choiceId: string;
    choiceLabel: string;
    choiceFlavor: string;
    expectedPathTone: string;
}, {
    choiceId: string;
    choiceLabel: string;
    choiceFlavor: string;
    expectedPathTone: string;
}>;
export declare const episodeOutputSchema: z.ZodObject<{
    episodeTitle: z.ZodString;
    episodeTheme: z.ZodString;
    sceneSetup: z.ZodString;
    castFrame: z.ZodString;
    moodInterpretation: z.ZodString;
    dramaticFrame: z.ZodString;
    choiceSet: z.ZodArray<z.ZodObject<{
        choiceId: z.ZodString;
        choiceLabel: z.ZodString;
        choiceFlavor: z.ZodString;
        expectedPathTone: z.ZodString;
    }, "strip", z.ZodTypeAny, {
        choiceId: string;
        choiceLabel: string;
        choiceFlavor: string;
        expectedPathTone: string;
    }, {
        choiceId: string;
        choiceLabel: string;
        choiceFlavor: string;
        expectedPathTone: string;
    }>, "many">;
    styleTag: z.ZodString;
}, "strip", z.ZodTypeAny, {
    episodeTitle: string;
    episodeTheme: string;
    sceneSetup: string;
    castFrame: string;
    moodInterpretation: string;
    dramaticFrame: string;
    choiceSet: {
        choiceId: string;
        choiceLabel: string;
        choiceFlavor: string;
        expectedPathTone: string;
    }[];
    styleTag: string;
}, {
    episodeTitle: string;
    episodeTheme: string;
    sceneSetup: string;
    castFrame: string;
    moodInterpretation: string;
    dramaticFrame: string;
    choiceSet: {
        choiceId: string;
        choiceLabel: string;
        choiceFlavor: string;
        expectedPathTone: string;
    }[];
    styleTag: string;
}>;
export declare const episodeOutcomeOutputSchema: z.ZodObject<{
    outcomeHeadline: z.ZodString;
    outcomeSummary: z.ZodString;
    companionCommentary: z.ZodString;
    resultTone: z.ZodString;
    artifactSeed: z.ZodString;
    continuitySeed: z.ZodString;
}, "strip", z.ZodTypeAny, {
    continuitySeed: string;
    outcomeHeadline: string;
    outcomeSummary: string;
    companionCommentary: string;
    resultTone: string;
    artifactSeed: string;
}, {
    continuitySeed: string;
    outcomeHeadline: string;
    outcomeSummary: string;
    companionCommentary: string;
    resultTone: string;
    artifactSeed: string;
}>;
export type EpisodeOutputSchema = z.infer<typeof episodeOutputSchema>;
export type EpisodeOutcomeOutputSchema = z.infer<typeof episodeOutcomeOutputSchema>;
