export class ServiceUnavailable{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ServiceUnavailable {
  pkServiceUnavailable: number;
  beginning: string;
  end: string | null;
  status: number;
  fkService: number;
}