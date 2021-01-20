export class ServiceOrderCanceled{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ServiceOrderCanceled {
  pkServiceOrderCanceled: number;
  date: string | null;
  detail: string;
  status: number;
  pkServiceOrder: number;
  fkUser: number;
}