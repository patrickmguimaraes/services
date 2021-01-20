export class LoanBankProgramApproval{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface LoanBankProgramApproval {
  pkLoanBankProgramApproval: number;
  status: number;
  fkApproval: number | null;
  fkLoanBankProgram: number | null;
}