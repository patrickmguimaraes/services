export class Service{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Service {
  pkService: number;
  cost: string;
  time: number;
  discountRate: string;
  cancelRate: string;
  withContract: boolean;
  status: number;
  fkEmployeeResponsibility: number | null;
  fkAddress: number | null;
  fkServiceCategory: number;
  fkJuridicalPerson: number | null;
}