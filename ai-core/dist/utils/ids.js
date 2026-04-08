export function createId(prefix) {
    const randomPart = Math.random().toString(36).slice(2, 10);
    return `${prefix}_${randomPart}`;
}
