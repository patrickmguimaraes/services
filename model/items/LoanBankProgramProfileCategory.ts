export class LoanBankProgramProfileCategory{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface LoanBankProgramProfileCategory {
  pkLoanBankProgramProfileCategory: number;
  status: number | null;
  fkCategory: number;
  fkLoanBankProgramProfile: number;
}