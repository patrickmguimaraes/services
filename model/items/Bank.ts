export class Bank{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Bank {
  pkBank: number;
  name: string;
  code: string;
  status: number;
  fkCountry: number | null;
  fkJuridicalPerson: number | null;
}