export class Attachment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Attachment {
  pkAttachment: number;
  name: string;
  date: string;
  type: string;
  path: string;
  status: number;
}