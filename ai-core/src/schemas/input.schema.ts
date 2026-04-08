import { z } from "zod";
import { eventStateSchema, modeIdSchema } from "./common.schema.js";

export const moodIdSchema = z.enum([
  "bored",
  "chaotic",
  "savage",
  "chill",
  "dramatic",
  "overthinking",
  "squad_energy",
  "festival_mode",
  "match_night",
  "decompression",
]);

export const contextClassificationInputSchema = z.object({
  moodId: moodIdSchema,
  rawSituation: z.string().min(1).max(500),
  modeId: modeIdSchema,
  eventState: eventStateSchema,
  hasSquadContext: z.boolean(),
  continuityHint: z.string().max(200).optional(),
});

export type ContextClassificationInputSchema = z.infer<
  typeof contextClassificationInputSchema
>;