export class HelpCenterAssistant{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface HelpCenterAssistant {
  pkHelpCenterAssistant: number;
  status: number;
  fkJuridicalPerson: number;
}