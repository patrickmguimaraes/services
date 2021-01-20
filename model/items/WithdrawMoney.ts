export class WithdrawMoney{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface WithdrawMoney {
  pkWithdrawMoney: number;
  value: string;
  date: string;
  dateApprovated: string | null;
  status: number;
  fkTransferMoney: number;
  fkUser: number;
  fkScreenApproval: number | null;
}