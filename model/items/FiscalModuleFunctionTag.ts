export class FiscalModuleFunctionTag{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface FiscalModuleFunctionTag {
  pkFiscalModuleFunctionTag: number;
  sequence: number;
  tag: string | null;
  value: string | null;
  length: number | null;
  completeWithZeroRight: boolean;
  completeWithZeroLeft: boolean;
  status: number;
  fkTagReference: number;
  fkFiscalModuleFunctionTag: number | null;
}