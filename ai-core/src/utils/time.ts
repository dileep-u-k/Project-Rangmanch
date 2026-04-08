import type { TimeOfDay } from "../types/common.js";

export function inferTimeOfDay(date: Date = new Date()): TimeOfDay {
  const hour = date.getHours();

  if (hour >= 5 && hour < 12) return "morning";
  if (hour >= 12 && hour < 17) return "afternoon";
  if (hour >= 17 && hour < 22) return "evening";
  if (hour >= 22 || hour < 5) return "late_night";

  return "unknown";
}

export function nowIso(): string {
  return new Date().toISOString();
}