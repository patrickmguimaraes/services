import { HelpCenterService} from "./HelpCenterService";
import { SMSController} from "./SMSController";

export class SMS {
  pkSMS: number;
  smsText: string;
  status: number = 0;
  sMSController: SMSController = new SMSController();
  sMSHelpCenterServiceList: Array<HelpCenterService> = new Array<HelpCenterService>();
}