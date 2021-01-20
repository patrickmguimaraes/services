export class BalanceBlocked{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface BalanceBlocked {
  pkBalanceBlocked: number;
  note: string;
  value: string;
  status: number;
  fkLoanMoney: number;
  fkBalance: number;
}