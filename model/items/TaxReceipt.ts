export class TaxReceipt{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxReceipt {
  pkTaxReceipt: number;
  code: string;
  date: string;
  dateCanceled: string | null;
  status: number;
  fkUser: number;
  fkEmail: number;
  fkServiceOrder: number;
  fkCity: number;
  pkServiceOrderCanceled: number | null;
  fkTaxReceiptCounterApproved: number | null;
}