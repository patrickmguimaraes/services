import { HelpCenter} from "./HelpCenter";
import { User} from "./User";
import { SMS} from "./SMS";
import { Email} from "./Email";

export class HelpCenterService {
  pkHelpCenterService: number;
  date: Date = new Date();;
  message: string;
  status: number = 0;
  helpCenter: HelpCenter = new HelpCenter();
  user: User = new User();
  sMS: SMS = new SMS();
  email: Email = new Email();
  sMS: SMS = new SMS();
}