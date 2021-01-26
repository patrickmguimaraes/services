import { HelpCenter} from "./HelpCenter";

export class HelpCenterServicesTypes {
  pkHelpCenterServicesTypes: number;
  name: string;
  type: number = 1;
  status: number = 0;
  helpCenterServicesTypes: HelpCenterServicesTypes = new HelpCenterServicesTypes();
  helpCenterServicesTypesHelpCenterServicesTypesList: Array<HelpCenterServicesTypes> = new Array<HelpCenterServicesTypes>();
  helpCenterServicesTypesHelpCenterList: Array<HelpCenter> = new Array<HelpCenter>();
}