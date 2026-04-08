import { z } from "zod";
export declare const moodIdSchema: z.ZodEnum<["bored", "chaotic", "savage", "chill", "dramatic", "overthinking", "squad_energy", "festival_mode", "match_night", "decompression"]>;
export declare const contextClassificationInputSchema: z.ZodObject<{
    moodId: z.ZodEnum<["bored", "chaotic", "savage", "chill", "dramatic", "overthinking", "squad_energy", "festival_mode", "match_night", "decompression"]>;
    rawSituation: z.ZodString;
    modeId: z.ZodEnum<["today_episode", "squad_mode", "scene_this", "challenge_me", "what_next", "live_moment"]>;
    eventState: z.ZodEnum<["none", "birthday", "festival", "match_night", "campus_event", "trip", "weekend", "celebration", "chaotic_shared_moment"]>;
    hasSquadContext: z.ZodBoolean;
    continuityHint: z.ZodOptional<z.ZodString>;
}, "strip", z.ZodTypeAny, {
    moodId: "chaotic" | "dramatic" | "match_night" | "bored" | "savage" | "chill" | "overthinking" | "squad_energy" | "festival_mode" | "decompression";
    rawSituation: string;
    modeId: "today_episode" | "squad_mode" | "scene_this" | "challenge_me" | "what_next" | "live_moment";
    eventState: "none" | "birthday" | "festival" | "match_night" | "campus_event" | "trip" | "weekend" | "celebration" | "chaotic_shared_moment";
    hasSquadContext: boolean;
    continuityHint?: string | undefined;
}, {
    moodId: "chaotic" | "dramatic" | "match_night" | "bored" | "savage" | "chill" | "overthinking" | "squad_energy" | "festival_mode" | "decompression";
    rawSituation: string;
    modeId: "today_episode" | "squad_mode" | "scene_this" | "challenge_me" | "what_next" | "live_moment";
    eventState: "none" | "birthday" | "festival" | "match_night" | "campus_event" | "trip" | "weekend" | "celebration" | "chaotic_shared_moment";
    hasSquadContext: boolean;
    continuityHint?: string | undefined;
}>;
export type ContextClassificationInputSchema = z.infer<typeof contextClassificationInputSchema>;
