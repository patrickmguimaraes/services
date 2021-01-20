export class BankBranch{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface BankBranch {
  pkBankBranch: number;
  branch: string;
  fkBank: number;
  fkJuridicalPerson: number;
}