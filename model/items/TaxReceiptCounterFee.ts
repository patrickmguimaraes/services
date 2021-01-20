export class TaxReceiptCounterFee{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxReceiptCounterFee {
  pkTaxReceiptCounterFee: number;
  status: number;
  pkTaxReceiptCounterApproved: number;
  pkTaxSettingsCounter: number;
  fkBalanceItem: number;
}