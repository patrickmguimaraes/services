export class TaxReceiptCounterApproved{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxReceiptCounterApproved {
  pkTaxReceiptCounterApproved: number;
  date: string;
  status: number;
  fkCounter: number;
  fkAttachment: number | null;
}