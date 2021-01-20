export class PaymentTransfer{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface PaymentTransfer {
  pkPaymentTransfer: number;
  status: number;
  fkPayment: number | null;
  fkBankAccount: number | null;
}