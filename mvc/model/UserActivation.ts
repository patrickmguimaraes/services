import { UserLogin} from "./UserLogin";
import { Email} from "./Email";
import { SMS} from "./SMS";
import { UserTwoStepsVerification} from "./UserTwoStepsVerification";

export class UserActivation {
  pkUserActivation: number;
  type: number = 1;
  code: string;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  dateActive: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number;
  userLogin: UserLogin = new UserLogin();
  email: Email = new Email();
  sMS: SMS = new SMS();
  userTwoStepsVerification: UserTwoStepsVerification = new UserTwoStepsVerification();
}