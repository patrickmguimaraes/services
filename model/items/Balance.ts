export class Balance{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Balance {
  pkBalance: number;
  name: string;
  value: string;
  consolidatedValue: string | null;
  consolidatedDate: string | null;
  status: number;
  fkCurrency: number;
  fkJuridicalPerson: number | null;
  fkPerson: number | null;
}