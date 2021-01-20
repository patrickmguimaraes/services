export class UserAttachment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface UserAttachment {
  pkUserAttachment: number;
  isProfilePicture: boolean;
  status: number;
  fkAttachment: number;
  fkUser: number;
  fkIdentificationDocument: number | null;
}