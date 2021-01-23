import { Person} from "./Person";
import { JuridicalPerson} from "./JuridicalPerson";
import { HelpCenter} from "./HelpCenter";
import { Email} from "./Email";

export class Contact {
  pkContact: number;
  type: string;
  value: string;
  expirationDate: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  person: Person = new Person();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  contactPhoneHelpCenterList: Array<HelpCenter> = new Array<HelpCenter>();
  contactEmailHelpCenterList: Array<HelpCenter> = new Array<HelpCenter>();
  contactEmailList: Array<Email> = new Array<Email>();
}