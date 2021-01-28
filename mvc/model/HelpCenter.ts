import { Contact} from "./Contact";
import { HelpCenterServicesTypes} from "./HelpCenterServicesTypes";
import { User} from "./User";
import { HelpCenterService} from "./HelpCenterService";

export class HelpCenter {
  pkHelpCenter: number;
  number: number = 1;
  protocol: string;
  date: Date = new Date();
  message: string;
  status: number = 0;
  contactPhone: Contact = new Contact();
  contactEmail: Contact = new Contact();
  helpCenterServicesTypes: HelpCenterServicesTypes = new HelpCenterServicesTypes();
  user: User = new User();
  helpCenterHelpCenterServiceList: Array<HelpCenterService> = new Array<HelpCenterService>();
}