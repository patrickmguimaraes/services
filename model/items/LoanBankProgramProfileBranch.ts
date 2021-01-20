export class LoanBankProgramProfileBranch{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface LoanBankProgramProfileBranch {
  pkLoanBankProgramProfileBranch: number;
  status: number;
  fkLoanBankProgramProfile: number | null;
  fkBankBranch: number | null;
}