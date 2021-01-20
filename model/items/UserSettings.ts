export class UserSettings{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface UserSettings {
  pkUserSettings: number;
  status: number;
  fkUser: number;
  fkSignatureAttachment: number | null;
}