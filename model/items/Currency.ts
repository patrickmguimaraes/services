export class Currency{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Currency {
  pkCurrency: number;
  name: string;
  code: string;
  symbol: string;
  status: number;
  fkCountry: number | null;
}