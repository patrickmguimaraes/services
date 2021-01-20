export class TaxSettingsCategory{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxSettingsCategory {
  pkTaxSettingsCategory: number;
  tax: string | null;
  localType: number;
  freeTax: boolean;
  status: number;
  fkTaxSettings: number | null;
  fkCategory: number | null;
}