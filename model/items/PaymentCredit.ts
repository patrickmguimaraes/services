export class PaymentCredit{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface PaymentCredit {
  pkPaymentCredit: number;
  transactionId: string;
  code: string;
  status: number;
  fkPayment: number;
  fkUserPaymentCreditCard: number;
}