export class ServiceTemplateContract{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ServiceTemplateContract {
  pkServiceTemplateContract: number;
  beginning: string;
  end: string | null;
  status: number;
  fkCategoryContractTemplate: number;
  fkService: number;
  fkTemplateAttachment: number;
  fkSignatureAttachment: number;
}