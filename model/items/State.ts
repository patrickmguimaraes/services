export class State{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface State {
  pkState: number;
  name: string;
  abbreviation: string;
  status: number;
  fkCountry: number;
}