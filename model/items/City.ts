export class City{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface City {
  pkCity: number;
  name: string;
  abbreviation: string;
  status: number;
  fkState: number;
  fkDepartmentOfFinance: number | null;
  fkBalance: number | null;
}