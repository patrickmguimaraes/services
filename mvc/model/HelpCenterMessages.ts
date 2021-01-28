import { User} from "./User";
import { HelpCenterAssistant} from "./HelpCenterAssistant";

export class HelpCenterMessages {
  pkHelpCenterMessages: number;
  message: string;
  date: Date = new Date();
  status: number;
  user: User = new User();
  userCompany: User = new User();
  helpCenterAssistant: HelpCenterAssistant = new HelpCenterAssistant();
}