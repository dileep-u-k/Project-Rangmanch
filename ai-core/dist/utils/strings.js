export function clampText(text, maxLength) {
    if (text.length <= maxLength) {
        return text;
    }
    return `${text.slice(0, maxLength - 1)}…`;
}
export function normalizeWhitespace(text) {
    return text.replace(/\s+/g, " ").trim();
}
