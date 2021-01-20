export class PaymentDebt{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface PaymentDebt {
  pkPaymentDebt: number;
  status: number;
  fkPayment: number;
  fkBankAccount: number;
}