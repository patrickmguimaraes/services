export class Refound{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Refound {
  pkRefound: number;
  status: number;
  fkBalanceItem: number;
  fkBalanceBlocked: number | null;
}