export class Employee{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Employee {
  pkEmployee: number;
  profession: string;
  status: number;
  fkPerson: number;
  fkJuridicalPerson: number;
}