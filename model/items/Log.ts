export class Log{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Log {
  pkLog: number;
  type: number;
  title: string;
  message: string;
  date: string;
  fkCountry: number;
}