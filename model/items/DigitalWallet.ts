export class DigitalWallet{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface DigitalWallet {
  pkDigitalWallet: number;
  name: string;
  code: string;
  status: number;
  fkCountry: number | null;
}