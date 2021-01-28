import { HelpCenter} from "./HelpCenter";
import { User} from "./User";
import { Email} from "./Email";
import { SMS} from "./SMS";

export class HelpCenterService {
  pkHelpCenterService: number;
  date: Date = new Date();
  message: string;
  status: number = 0;
  helpCenter: HelpCenter = new HelpCenter();
  user: User = new User();
  email: Email = new Email();
  sMS: SMS = new SMS();
}