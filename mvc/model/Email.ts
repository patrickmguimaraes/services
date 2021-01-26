import { TaxReceipt} from "./TaxReceipt";
import { HelpCenterService} from "./HelpCenterService";
import { EmailController} from "./EmailController";
import { Contact} from "./Contact";

export class Email {
  pkEmail: number;
  subject: string;
  emailText: string;
  emailController: EmailController = new EmailController();
  contact: Contact = new Contact();
  emailTaxReceiptList: Array<TaxReceipt> = new Array<TaxReceipt>();
  emailHelpCenterServiceList: Array<HelpCenterService> = new Array<HelpCenterService>();
}