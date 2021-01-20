export class Tax{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Tax {
  pkTax: number;
  name: string;
  status: number;
  fkCountry: number | null;
}