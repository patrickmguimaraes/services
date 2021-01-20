export class JuridicalPerson{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface JuridicalPerson {
  pkJuridicalPerson: number;
  name: string;
  socialReason: string;
  openedDate: string;
  companyType: number;
  legalStructure: number;
  fkOriginCountry: number | null;
}