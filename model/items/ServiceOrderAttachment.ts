export class ServiceOrderAttachment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ServiceOrderAttachment {
  pkServiceOrderAttachment: number;
  status: number;
  fkServiceOrder: number;
  pkServiceContract: number | null;
  fkUser: number | null;
  fkAttachment: number | null;
}