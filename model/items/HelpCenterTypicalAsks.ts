export class HelpCenterTypicalAsks{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface HelpCenterTypicalAsks {
  pkHelpCenterTypicalAsks: number;
  number: number | null;
  ask: string;
  answer: string;
  fkHelpCenterTypicalAsks: number | null;
  fkLanguage: number;
}