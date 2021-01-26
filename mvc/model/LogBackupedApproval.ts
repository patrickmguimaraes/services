import { LogBackuped} from "./LogBackuped";
import { Approval} from "./Approval";

export class LogBackupedApproval {
  pkLogBackupedApproval: number;
  status: number = 0;
  logBackuped: LogBackuped = new LogBackuped();
  approval: Approval = new Approval();
}