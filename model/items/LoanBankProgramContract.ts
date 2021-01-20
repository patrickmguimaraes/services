export class LoanBankProgramContract{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface LoanBankProgramContract {
  pkLoanBankProgramContract: number;
  status: number;
  fkTemplateContract: number;
  fkLoanBankProgram: number | null;
}