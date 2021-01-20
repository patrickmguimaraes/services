export class UserPaymentBankAccount{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface UserPaymentBankAccount {
  pkUserPaymentBankAccount: number;
  fkUserPayment: number;
  fkBankAccount: number;
}