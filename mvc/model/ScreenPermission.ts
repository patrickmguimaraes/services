import { Screen} from "./Screen";
import { User} from "./User";

export class ScreenPermission {
  pkPermissionPermission: number;
  permission: number = 1;
  status: number = 0;
  screen: Screen = new Screen();
  user: User = new User();
}