import { z } from "zod";

export const modeIdSchema = z.enum([
  "today_episode",
  "squad_mode",
  "scene_this",
  "challenge_me",
  "what_next",
  "live_moment",
]);

export const energyLevelSchema = z.enum(["low", "medium", "high"]);

export const socialSharpnessSchema = z.enum(["gentle", "playful", "spicy"]);

export const timeOfDaySchema = z.enum([
  "morning",
  "afternoon",
  "evening",
  "late_night",
  "unknown",
]);

export const eventStateSchema = z.enum([
  "none",
  "birthday",
  "festival",
  "match_night",
  "campus_event",
  "trip",
  "weekend",
  "celebration",
  "chaotic_shared_moment",
]);