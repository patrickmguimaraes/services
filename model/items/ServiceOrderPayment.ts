export class ServiceOrderPayment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ServiceOrderPayment {
  pkServiceOrderPayment: number;
  number: number;
  note: string | null;
  date: string;
  value: string;
  paymentType: number;
  status: number;
  fkServiceOrder: number;
  fkPayment: number | null;
  fkBalanceItem: number | null;
}