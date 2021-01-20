export class LoanBankProgram{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface LoanBankProgram {
  pkLoanBankProgram: number;
  name: string;
  beginning: string;
  end: string;
  interestRate: string;
  status: number;
  fkBank: number;
  fkLoanBankProgramProfile: number | null;
  fkScreenApproval: number | null;
}