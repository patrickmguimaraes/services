export class Counter{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Counter {
  pkCounter: number;
  dateApproved: string | null;
  status: number;
  fkJuridicalPerson: number;
  fkPerson: number | null;
}