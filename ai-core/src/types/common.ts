export type ISODateString = string;

export type EntityId = string;

export type ModeId =
  | "today_episode"
  | "squad_mode"
  | "scene_this"
  | "challenge_me"
  | "what_next"
  | "live_moment";

export type EnergyLevel = "low" | "medium" | "high";

export type TheatricalIntensity = "subtle" | "moderate" | "bold";

export type SocialSharpness = "gentle" | "playful" | "spicy";

export type FamiliarityLevel = "fresh" | "warm" | "continuity_aware";

export type HumorFlavor =
  | "witty"
  | "dry"
  | "chaotic"
  | "dramatic"
  | "absurdist"
  | "savvy";

export type TimeOfDay =
  | "morning"
  | "afternoon"
  | "evening"
  | "late_night"
  | "unknown";

export type EventState =
  | "none"
  | "birthday"
  | "festival"
  | "match_night"
  | "campus_event"
  | "trip"
  | "weekend"
  | "celebration"
  | "chaotic_shared_moment";

export type ContextType =
  | "solo_bored"
  | "solo_chaotic"
  | "solo_decompression"
  | "late_night_drift"
  | "social_idle"
  | "social_chaos"
  | "event_energy"
  | "continuity_return"
  | "freshness_seek";

export interface BaseContextMetadata {
  requestId: EntityId;
  userId: EntityId;
  timestamp: ISODateString;
  timeOfDay: TimeOfDay;
  eventState: EventState;
  modeId: ModeId;
}