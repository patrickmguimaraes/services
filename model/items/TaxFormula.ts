export class TaxFormula{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxFormula {
  pkTaxFormula: number;
  number: number;
  rate: string | null;
  companyType: number;
  status: number;
  fkTax: number;
  fkTaxSettings: number | null;
  fkTaxFormula: number | null;
  fkBankAccount: number | null;
  fkTaxSettingsCategory: number | null;
}