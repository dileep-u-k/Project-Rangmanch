import { z } from "zod";
export declare const modeIdSchema: z.ZodEnum<["today_episode", "squad_mode", "scene_this", "challenge_me", "what_next", "live_moment"]>;
export declare const energyLevelSchema: z.ZodEnum<["low", "medium", "high"]>;
export declare const socialSharpnessSchema: z.ZodEnum<["gentle", "playful", "spicy"]>;
export declare const timeOfDaySchema: z.ZodEnum<["morning", "afternoon", "evening", "late_night", "unknown"]>;
export declare const eventStateSchema: z.ZodEnum<["none", "birthday", "festival", "match_night", "campus_event", "trip", "weekend", "celebration", "chaotic_shared_moment"]>;
