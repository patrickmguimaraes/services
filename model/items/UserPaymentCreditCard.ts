export class UserPaymentCreditCard{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface UserPaymentCreditCard {
  pkUserPaymentCreditCard: number;
  cardNumber: string;
  nameOnCard: string;
  expirationDate: string;
  pairingId: string | null;
  fkCreditCardBrand: number;
  fkUserPayment: number;
  fkBillingAddress: number | null;
  pkShippingAddress: number | null;
}