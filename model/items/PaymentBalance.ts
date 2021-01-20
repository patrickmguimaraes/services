export class PaymentBalance{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface PaymentBalance {
  pkPaymentBalance: number;
  status: number;
  fkPayment: number;
}