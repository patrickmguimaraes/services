export class ServiceOrderRefund{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ServiceOrderRefund {
  pkServiceOrderRefund: number;
  value: string;
  fee: string;
  date: string | null;
  status: number;
  fkServiceOrderPayment: number;
  fkServiceOrderCanceled: number;
  fkRefound: number | null;
  fkRefoundFee: number | null;
}