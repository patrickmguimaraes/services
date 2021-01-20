export class EmployeeResponsibility{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface EmployeeResponsibility {
  pkEmployeeResponsibility: number;
  position: string;
  salary: string;
  commission: string;
  beginning: string;
  end: string | null;
  status: number;
  fkEmployee: number;
}