import { User} from "./User";

export class UserPayment {
  pkUserPayment: number;
  type: number;
  date: Date = new Date();
  default: boolean = false;
  status: number = 0;
  user: User = new User();
}