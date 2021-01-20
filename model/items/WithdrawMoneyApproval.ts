export class WithdrawMoneyApproval{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface WithdrawMoneyApproval {
  pkWithdrawMoneyApproval: number;
  status: number;
  fkApproval: number;
  fkWithdrawMoney: number;
}