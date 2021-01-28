import { ScreenApproval} from "./ScreenApproval";
import { Country} from "./Country";
import { User} from "./User";
import { LogBackupedApproval} from "./LogBackupedApproval";

export class LogBackuped {
  pkLogBackuped: number;
  path: string;
  date: Date = new Date();
  beginning: Date = new Date();
  end: Date = new Date();
  status: number = 0;
  screenApproval: ScreenApproval = new ScreenApproval();
  country: Country = new Country();
  user: User = new User();
  logBackupedLogBackupedApprovalList: Array<LogBackupedApproval> = new Array<LogBackupedApproval>();
}