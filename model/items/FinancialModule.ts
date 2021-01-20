export class FinancialModule{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface FinancialModule {
  pkFinancialModule: number;
  date: string;
  wallet: string | null;
  status: number;
  fkMainBankAccount: number;
  fkLogo: number;
  fkScreenApproval: number;
  fkUser: number;
}