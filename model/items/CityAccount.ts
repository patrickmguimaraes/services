export class CityAccount{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface CityAccount {
  pkCityAccount: number;
  status: number;
  fkCity: number;
  fkBankAccount: number;
  fkTax: number;
}