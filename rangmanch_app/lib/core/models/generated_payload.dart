class GeneratedPayload<T> {
  final T data;
  final bool usedFallback;
  final String source;

  const GeneratedPayload({
    required this.data,
    required this.usedFallback,
    required this.source,
  });

  const GeneratedPayload.seeded(this.data)
      : usedFallback = false,
        source = 'seeded';

  const GeneratedPayload.fallback(this.data)
      : usedFallback = true,
        source = 'fallback';
}