export class FinanceModuleApproval{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface FinanceModuleApproval {
  pkFinanceModuleApproval: number;
  status: number;
  fkFinancialModule: number | null;
  fkApproval: number | null;
}