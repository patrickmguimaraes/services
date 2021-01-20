export class LogBackuped{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface LogBackuped {
  pkLogBackuped: number;
  path: string;
  date: string | null;
  beginning: string;
  end: string;
  status: number;
  fkScreenApproval: number;
  fkCountry: number;
  fkUser: number | null;
}