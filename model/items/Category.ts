export class Category{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Category {
  pkCategory: number;
  name: string;
  code: string | null;
  status: number;
  fkCategory: number | null;
  fkCountry: number | null;
}