export class IdentificationDocumentAttachment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface IdentificationDocumentAttachment {
  pkIdentificationDocumentAttachment: number;
  status: number;
  fkIdentificationDocument: number | null;
  fkAttachment: number | null;
}