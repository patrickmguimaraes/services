import { UserActivation} from "./UserActivation";
import { User} from "./User";

export class UserTwoStepsVerification {
  pkUserTwoStepsVerification: number;
  dispositive: string;
  code: string;
  datePaired: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number;
  user: User = new User();
  userTwoStepsVerificationUserActivationList: Array<UserActivation> = new Array<UserActivation>();
}