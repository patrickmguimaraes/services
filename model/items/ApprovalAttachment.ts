import { Approval} from "./Approval";
import { Attachment} from "./Attachment";

export class ApprovalAttachment {
  pkApprovalAttachment: number;
  status: number = 0;
  approval: Approval = new Approval();
  attachment: Attachment = new Attachment();
}