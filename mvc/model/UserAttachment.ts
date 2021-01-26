import { Attachment} from "./Attachment";
import { User} from "./User";
import { IdentificationDocument} from "./IdentificationDocument";

export class UserAttachment {
  pkUserAttachment: number;
  isProfilePicture: boolean = false;
  status: number = 0;
  attachment: Attachment = new Attachment();
  user: User = new User();
  identificationDocument: IdentificationDocument = new IdentificationDocument();
}