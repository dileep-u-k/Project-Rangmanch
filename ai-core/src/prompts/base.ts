export interface PromptTemplateInput {
  systemPurpose: string;
  toneRules: string[];
  safetyRules: string[];
  formattingRules: string[];
  fallbackBehavior: string;
}

export function buildSystemInstruction(input: PromptTemplateInput): string {
  const toneBlock = input.toneRules.map((rule) => `- ${rule}`).join("\n");
  const safetyBlock = input.safetyRules.map((rule) => `- ${rule}`).join("\n");
  const formattingBlock = input.formattingRules.map((rule) => `- ${rule}`).join("\n");

  return [
    `SYSTEM PURPOSE:\n${input.systemPurpose}`,
    `TONE RULES:\n${toneBlock}`,
    `SAFETY RULES:\n${safetyBlock}`,
    `FORMATTING RULES:\n${formattingBlock}`,
    `FALLBACK BEHAVIOR:\n${input.fallbackBehavior}`,
  ].join("\n\n");
}