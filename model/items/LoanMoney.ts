export class LoanMoney{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface LoanMoney {
  pkLoanMoney: number;
  date: string;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
  fkLoanMoneyRequest: number;
  fkPayment: number | null;
  fkCurrency: number | null;
}