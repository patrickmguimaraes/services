export class Language{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Language {
  pkLanguage: number;
  name: string;
  status: number;
  fkCountry: number | null;
}