import { z } from "zod";
export const choiceOutputSchema = z.object({
    choiceId: z.string().min(1),
    choiceLabel: z.string().min(1).max(120),
    choiceFlavor: z.string().min(1).max(50),
    expectedPathTone: z.string().min(1).max(80),
});
export const episodeOutputSchema = z.object({
    episodeTitle: z.string().min(1).max(120),
    episodeTheme: z.string().min(1).max(80),
    sceneSetup: z.string().min(1).max(300),
    castFrame: z.string().min(1).max(200),
    moodInterpretation: z.string().min(1).max(120),
    dramaticFrame: z.string().min(1).max(120),
    choiceSet: z.array(choiceOutputSchema).min(2).max(3),
    styleTag: z.string().min(1).max(60),
});
export const episodeOutcomeOutputSchema = z.object({
    outcomeHeadline: z.string().min(1).max(120),
    outcomeSummary: z.string().min(1).max(300),
    companionCommentary: z.string().min(1).max(200),
    resultTone: z.string().min(1).max(80),
    artifactSeed: z.string().min(1).max(120),
    continuitySeed: z.string().min(1).max(120),
});
