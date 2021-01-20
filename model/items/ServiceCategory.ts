export class ServiceCategory{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ServiceCategory {
  pkServiceCategory: number;
  name: string;
  status: number;
  fkCategory: number | null;
}