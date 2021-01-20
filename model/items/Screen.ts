export class Screen{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Screen {
  pkScreen: number;
  id: number;
  name: string;
  path: string;
  status: number;
}