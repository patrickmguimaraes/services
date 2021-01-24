import { User} from "./User";
import { Attachment} from "./Attachment";

export class UserSettings {
  pkUserSettings: number;
  status: number = 0;
  user: User = new User();
  signatureAttachment: Attachment = new Attachment();
}