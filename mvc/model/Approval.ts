import { User} from "./User";
import { ScreenApproval} from "./ScreenApproval";
import { ApprovalAttachment} from "./ApprovalAttachment";

export class Approval {
  pkApproval: number;
  observation: string;
  date: Date = new Date();
  status: number = 0;
  user: User = new User();
  screenApproval: ScreenApproval = new ScreenApproval();
  approvalApprovalAttachmentList: Array<ApprovalAttachment> = new Array<ApprovalAttachment>();
}