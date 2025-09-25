export interface CProgress {
    level: string,
    text: string,
    progress: number,
    icon: any,
    bg: string
}

export interface CategoryList {
    [category: string] : CProgress[],
}