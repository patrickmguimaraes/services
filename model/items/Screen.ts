import { ScreenPermission} from "./ScreenPermission";
import { ScreenApproval} from "./ScreenApproval";

export class Screen {
  pkScreen: number;
  id: number;
  name: string;
  path: string;
  status: number = 0;
  screenScreenPermission: Array<ScreenPermission> = new Array<ScreenPermission>();
  screenScreenApproval: Array<ScreenApproval> = new Array<ScreenApproval>();
}