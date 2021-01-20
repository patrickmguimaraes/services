export class PaymentDigitalWallet{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface PaymentDigitalWallet {
  pkPaymentDigitalWallet: number;
  status: number;
  fkPayment: number | null;
  fkUserPaymentDigitalWallet: number | null;
}