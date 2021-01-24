import { ScreenPermission} from "./ScreenPermission";
import { ScreenApproval} from "./ScreenApproval";

export class Screen {
  pkScreen: number;
  id: number;
  name: string;
  path: string;
  status: number = 0;
  screenScreenPermissionList: Array<ScreenPermission> = new Array<ScreenPermission>();
  screenScreenApprovalList: Array<ScreenApproval> = new Array<ScreenApproval>();
}