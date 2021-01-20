export class BalanceItem{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface BalanceItem {
  pkBalanceItem: number;
  note: string;
  date: string;
  value: string;
  status: number;
  fkBalance: number | null;
  fkBalanceOrigin: number | null;
  fkBalanceBlocked: number | null;
}