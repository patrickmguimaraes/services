export class PaymentBill{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface PaymentBill {
  pkPaymentBill: number;
  status: number;
  fkPayment: number;
  fkPerson: number;
}