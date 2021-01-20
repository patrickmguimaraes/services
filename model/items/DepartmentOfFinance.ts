export class DepartmentOfFinance{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface DepartmentOfFinance {
  pkDepartmentOfFinance: number;
  region: string | null;
  status: number;
  fkJuridicalPerson: number;
  fkResponsable: number;
  fkAddress: number;
  fkState: number;
}