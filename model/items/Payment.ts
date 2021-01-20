export class Payment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Payment {
  pkPayment: number;
  type: number;
  date: string;
  value: string;
  note: string;
  status: number;
  fkCurrency: number;
  fkBalanceItem: number;
  fkMainBankAccount: number;
}