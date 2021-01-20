export class TaxReceiptCanceled{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxReceiptCanceled {
  pkTaxReceiptCanceled: number;
  date: string | null;
  status: number;
  fkTaxReceipt: number;
  fkFiscalModuleFunction: number;
  fkTaxReceiptFiscalModule: number;
}