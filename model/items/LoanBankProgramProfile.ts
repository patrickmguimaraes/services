export class LoanBankProgramProfile{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface LoanBankProgramProfile {
  pkLoanBankProgramProfile: number;
  forCompany: boolean;
  minimumMonths: number;
  maximumMonths: number;
  minimumSpend: string | null;
  minimumSpendSinceDate: string | null;
  status: number;
}