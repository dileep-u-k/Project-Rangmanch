export interface PromptTemplateInput {
    systemPurpose: string;
    toneRules: string[];
    safetyRules: string[];
    formattingRules: string[];
    fallbackBehavior: string;
}
export declare function buildSystemInstruction(input: PromptTemplateInput): string;
