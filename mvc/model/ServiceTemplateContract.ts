import { CategoryContractTemplate} from "./CategoryContractTemplate";
import { Service} from "./Service";
import { Attachment} from "./Attachment";
import { ServiceOrderAttachment} from "./ServiceOrderAttachment";

export class ServiceTemplateContract {
  pkServiceTemplateContract: number;
  beginning: Date = new Date(new Date().setHours(12, 0, 0, 0));
  end: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number;
  categoryContractTemplate: CategoryContractTemplate = new CategoryContractTemplate();
  service: Service = new Service();
  templateAttachment: Attachment = new Attachment();
  signatureAttachment: Attachment = new Attachment();
  serviceContractServiceOrderAttachmentList: Array<ServiceOrderAttachment> = new Array<ServiceOrderAttachment>();
}