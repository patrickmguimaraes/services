import { IdentificationDocument} from "./IdentificationDocument";
import { Attachment} from "./Attachment";

export class IdentificationDocumentAttachment {
  pkIdentificationDocumentAttachment: number;
  status: number = 0;
  identificationDocument: IdentificationDocument = new IdentificationDocument();
  attachment: Attachment = new Attachment();
}