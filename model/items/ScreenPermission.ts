export class ScreenPermission{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ScreenPermission {
  pkPermissionPermission: number;
  permission: number;
  status: number;
  fkScreen: number;
  fkUser: number;
}