export class MainBankAccountApproval{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface MainBankAccountApproval {
  pkMainBankAccountApproval: number;
  status: number;
  fkMainBankAccount: number;
  fkApproval: number;
}