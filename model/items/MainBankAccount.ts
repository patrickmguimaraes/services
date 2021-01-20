export class MainBankAccount{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface MainBankAccount {
  pkMainBankAccount: number;
  status: number;
  fkBalance: number;
  fkBankAccount: number;
  fkCountry: number;
  fkScreenApproval: number;
  fkUserCreator: number;
}