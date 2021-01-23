import { TaxReceipt} from "./TaxReceipt";
import { HelpCenterService} from "./HelpCenterService";
import { EmailController} from "./EmailController";
import { Contact} from "./Contact";
import { UserActivation} from "./UserActivation";

export class Email {
  pkEmail: number;
  subject: string;
  emailText: string;
  emailController: EmailController = new EmailController();
  contact: Contact = new Contact();
  emailUserActivationReferenced: UserActivation = new UserActivation();
  emailTaxReceipt: Array<TaxReceipt> = new Array<TaxReceipt>();
  emailHelpCenterService: Array<HelpCenterService> = new Array<HelpCenterService>();
}