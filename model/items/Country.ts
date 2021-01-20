export class Country{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Country {
  pkCountry: number;
  name: string;
  abbreviation: string;
  status: number;
  timeZone: number | null;
  fkLanguage: number;
}