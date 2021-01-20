export class ServiceOrder{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ServiceOrder {
  pkServiceOrder: number;
  code: string;
  date: string;
  cost: string;
  discount: string;
  fee: string;
  total: string;
  primaryPayment: number;
  status: number;
  fkAppointment: number;
  fkJuridicalPerson: number;
  fkCurrency: number;
  fkPerson: number | null;
  fkAddress: number | null;
}