export class ApprovalAttachment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ApprovalAttachment {
  pkApprovalAttachment: number;
  status: number;
  fkApproval: number;
  fkAttachment: number;
}