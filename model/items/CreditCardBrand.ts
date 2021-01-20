export class CreditCardBrand{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface CreditCardBrand {
  pkCreditCardBrand: number;
  name: string;
  code: string;
  status: number;
  fkCountry: number | null;
}