export class ServiceOrderTax{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ServiceOrderTax {
  pkServiceOrderTax: number;
  note: string;
  date: string;
  value: string;
  status: number;
  fkServiceOrder: number;
  fkTaxFormula: number;
  fkTaxSetting: number;
  fkTaxReceipt: number | null;
}