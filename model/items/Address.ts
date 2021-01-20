export class Address{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}
export interface Address {
  pkAddress: number;
  type: number;
  street: string;
  number: string;
  neighborhood: string;
  zipCode: string | null;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
  fkCity: number;
}