import { Country} from "./Country";
import { Email} from "./Email";

export class EmailController {
  pkEmailController: number;
  type: number = 1;
  imap: string;
  smtp: string;
  fullName: string;
  email: string;
  password: string;
  status: number = 0;
  country: Country = new Country();
  emailControllerEmailList: Array<Email> = new Array<Email>();
}