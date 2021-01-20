export class BankAccount{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface BankAccount {
  pkBankAccount: number;
  branch: string;
  account: string;
  validatedAccount: string | null;
  status: number;
  fkCurrency: number;
  fkJuridicalPerson: number | null;
  fkPerson: number | null;
  fkBank: number;
  fkBankBranch: number | null;
}