import { User} from "./User";
import { HelpCenterAssistant} from "./HelpCenterAssistant";

export class HelpCenterMessages {
  pkHelpCenterMessages: number;
  message: string;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number;
  user: User = new User();
  userCompany: User = new User();
  helpCenterAssistant: HelpCenterAssistant = new HelpCenterAssistant();
}