import { User} from "./User";

export class UserPayment {
  pkUserPayment: number;
  type: number;
  date: Date = new Date(new Date().setHours(12, 0, 0, 0));
  default: boolean = false;
  status: number = 0;
  user: User = new User();
}