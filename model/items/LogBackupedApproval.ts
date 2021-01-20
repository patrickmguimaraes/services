export class LogBackupedApproval{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface LogBackupedApproval {
  pkLogBackupedApproval: number;
  status: number;
  fkLogBackuped: number;
  fkApproval: number;
}