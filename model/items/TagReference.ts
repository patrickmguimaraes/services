export class TagReference{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface TagReference {
  pkTagReference: number;
  code: string;
  name: string;
  status: number;
  fkCountry: number | null;
}