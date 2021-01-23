import { HelpCenterService} from "./HelpCenterService";
import { SMSController} from "./SMSController";
import { UserActivation} from "./UserActivation";

export class SMS {
  pkSMS: number;
  smsText: string;
  status: number = 0;
  sMSController: SMSController = new SMSController();
  sMSUserActivationReferenced: UserActivation = new UserActivation();
  sMSHelpCenterServiceList: Array<HelpCenterService> = new Array<HelpCenterService>();
  sMSHelpCenterServiceList: Array<HelpCenterService> = new Array<HelpCenterService>();
}