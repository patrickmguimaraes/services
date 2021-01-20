export class UserPaymentDigitalWallet{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface UserPaymentDigitalWallet {
  pkUserPaymentDigitalWallet: number;
  userCodeAccess: string;
  datePairedUp: string;
  fkDigitalWallet: number;
  fkUserPayment: number;
}