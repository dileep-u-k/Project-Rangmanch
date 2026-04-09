String trimmedOrEmpty(String? value) {
  return value?.trim() ?? '';
}

bool isBlank(String? value) {
  return trimmedOrEmpty(value).isEmpty;
}

String fallbackText(String? value, String fallback) {
  final cleaned = trimmedOrEmpty(value);
  return cleaned.isEmpty ? fallback : cleaned;
}