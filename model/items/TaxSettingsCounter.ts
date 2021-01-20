export class TaxSettingsCounter{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxSettingsCounter {
  pkTaxSettingsCounter: number;
  byPercent: string | null;
  byOrderFixedPrice: string | null;
  official: boolean;
  substituto: boolean;
  status: number;
  fkTaxSettings: number;
  fkCounter: number;
}