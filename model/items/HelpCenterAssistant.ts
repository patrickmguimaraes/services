import { HelpCenterMessages} from "./HelpCenterMessages";
import { JuridicalPerson} from "./JuridicalPerson";

export class HelpCenterAssistant {
  pkHelpCenterAssistant: number;
  status: number = 0;
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  helpCenterAssistantHelpCenterMessagesList: Array<HelpCenterMessages> = new Array<HelpCenterMessages>();
}