export class Contact{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Contact {
  pkContact: number;
  type: string;
  value: string;
  expirationDate: string | null;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
}