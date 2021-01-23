import { HelpCenterServicesTypes} from "./HelpCenterServicesTypes";
import { HelpCenter} from "./HelpCenter";

export class HelpCenterServicesTypes {
  pkHelpCenterServicesTypes: number;
  name: string;
  type: number = 1;
  status: number = 0;
  helpCenterServicesTypes: HelpCenterServicesTypes = new HelpCenterServicesTypes();
  helpCenterServicesTypesHelpCenterServicesTypes: Array<HelpCenterServicesTypes> = new Array<HelpCenterServicesTypes>();
  helpCenterServicesTypesHelpCenter: Array<HelpCenter> = new Array<HelpCenter>();
}