import { Country} from "./Country";
import { SMS} from "./SMS";

export class SMSController {
  pkSMSController: number;
  type: number = 1;
  number: string;
  status: number = 0;
  country: Country = new Country();
  sMSControllerSMSList: Array<SMS> = new Array<SMS>();
}