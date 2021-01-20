export class PrepayTax{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface PrepayTax {
  pkPrepayTax: number;
  value: string;
  date: string;
  status: number;
  fkUser: number;
  fkPayment: number | null;
  fkBalanceItem: number | null;
}