export interface GreetingOutput {
    type: "home_greeting" | "mode_intro" | "continuity_greeting";
    headline: string;
    subline: string;
    toneTag: string;
    companionVoiceStyle: string;
}
export interface ChoiceOutput {
    choiceId: string;
    choiceLabel: string;
    choiceFlavor: string;
    expectedPathTone: string;
}
export interface EpisodeOutput {
    episodeTitle: string;
    episodeTheme: string;
    sceneSetup: string;
    castFrame: string;
    moodInterpretation: string;
    dramaticFrame: string;
    choiceSet: ChoiceOutput[];
    styleTag: string;
}
export interface EpisodeOutcomeOutput {
    outcomeHeadline: string;
    outcomeSummary: string;
    companionCommentary: string;
    resultTone: string;
    artifactSeed: string;
    continuitySeed: string;
}
export interface SquadMemberRole {
    memberLabel: string;
    assignedRole: string;
}
export interface SquadOutput {
    squadTitle: string;
    squadFrame: string;
    memberRoles: SquadMemberRole[];
    groupDynamicSummary: string;
    verdictOrRanking: string;
    socialPayoffLine: string;
    artifactSeed: string;
    continuitySeed: string;
}
export interface ArtifactOutput {
    artifactType: "episode_poster" | "verdict_card" | "chaos_ranking" | "squad_result_card" | "next_act_card" | "dramatic_summary_card";
    artifactHeadline: string;
    artifactSubheadline: string;
    artifactResultCore: string;
    artifactCaption: string;
    artifactStyleTag: string;
}
export interface ReturnHookOutput {
    hookHeadline: string;
    hookType: "next_act" | "unresolved_aftermath" | "squad_recurrence" | "role_continuation" | "dramatic_tease" | "world_progression";
    hookLine: string;
    hookEnergy: string;
    returnReason: string;
}
