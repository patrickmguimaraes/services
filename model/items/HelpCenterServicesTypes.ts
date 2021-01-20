export class HelpCenterServicesTypes{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface HelpCenterServicesTypes {
  pkHelpCenterServicesTypes: number;
  name: string;
  type: number;
  status: number;
  fkHelpCenterServicesTypes: number | null;
}