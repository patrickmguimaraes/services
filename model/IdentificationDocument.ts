import { Person} from "./Person";
import { JuridicalPerson} from "./JuridicalPerson";
import { State} from "./State";
import { Country} from "./Country";
import { UserAttachment} from "./UserAttachment";
import { IdentificationDocumentAttachment} from "./IdentificationDocumentAttachment";

export class IdentificationDocument {
  pkIdentificationDocument: number;
  type: string;
  value: string;
  issueDate: Date = new Date();
  expirationDate: Date = new Date();
  status: number = 0;
  person: Person = new Person();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  state: State = new State();
  country: Country = new Country();
  identificationDocumentUserAttachmentList: Array<UserAttachment> = new Array<UserAttachment>();
  identificationDocumentIdentificationDocumentAttachmentList: Array<IdentificationDocumentAttachment> = new Array<IdentificationDocumentAttachment>();
}