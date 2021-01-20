export class TaxReceiptFiscalModule{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TaxReceiptFiscalModule {
  pkTaxReceiptFiscalModule: number;
  isSendingInGroup: boolean;
  dateSent: string | null;
  answeredRevenueItemCode: string | null;
  status: number;
  fkFiscalModuleFunction: number;
  fkTaxReceipt: number;
}