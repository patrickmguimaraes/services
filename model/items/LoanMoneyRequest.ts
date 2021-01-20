export class LoanMoneyRequest{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface LoanMoneyRequest {
  pkLoanMoneyRequest: number;
  value: string;
  months: number;
  date: string;
  status: number;
  fkJuridicalPerson: number | null;
  fkPerson: number | null;
  fkLoanBankProgram: number;
}