import { ServiceOrder} from "./ServiceOrder";
import { ServiceTemplateContract} from "./ServiceTemplateContract";
import { User} from "./User";
import { Attachment} from "./Attachment";

export class ServiceOrderAttachment {
  pkServiceOrderAttachment: number;
  status: number = 0;
  serviceOrder: ServiceOrder = new ServiceOrder();
  serviceContract: ServiceTemplateContract = new ServiceTemplateContract();
  user: User = new User();
  attachment: Attachment = new Attachment();
}