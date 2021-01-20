export class BillFinancialModuleFunction{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface BillFinancialModuleFunction {
  pkBillFinancialModuleFunction: number;
  status: number;
  fkBill: number;
  fkFinancialModuleFunction: number;
  fkAttachment: number | null;
}