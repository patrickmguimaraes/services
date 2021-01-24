import { UserActivation} from "./UserActivation";
import { Address} from "./Address";
import { User} from "./User";

export class UserLogin {
  pkUserLogin: number;
  dispositive: string;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  trust: boolean = false;
  status: number = 0;
  address: Address = new Address();
  user: User = new User();
  userLoginUserActivationList: Array<UserActivation> = new Array<UserActivation>();
}