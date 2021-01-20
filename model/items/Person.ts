export class Person{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Person {
  pkPerson: number;
  name: string;
  lastName: string;
  bithday: string;
  maritalStatus: number;
  status: number;
  fkBirthCountry: number;
}