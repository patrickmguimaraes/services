export class TaxReceiptCounterPayment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxReceiptCounterPayment {
  pkTaxReceiptCounterPayment: number;
  status: number;
  fkTaxReceiptCounterApproved: number;
  fkTransferMoney: number | null;
  fkTaxReceiptCounterFee: number | null;
}