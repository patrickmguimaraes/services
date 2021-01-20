export class IdentificationDocument{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface IdentificationDocument {
  pkIdentificationDocument: number;
  type: string;
  value: string;
  issueDate: string | null;
  expirationDate: string | null;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
  fkState: number | null;
  fkCountry: number | null;
}