import { CategoryContractTemplate} from "./CategoryContractTemplate";
import { Service} from "./Service";
import { Attachment} from "./Attachment";
import { ServiceOrderAttachment} from "./ServiceOrderAttachment";

export class ServiceTemplateContract {
  pkServiceTemplateContract: number;
  beginning: Date = new Date();
  end: Date = new Date();
  status: number;
  categoryContractTemplate: CategoryContractTemplate = new CategoryContractTemplate();
  service: Service = new Service();
  templateAttachment: Attachment = new Attachment();
  signatureAttachment: Attachment = new Attachment();
  serviceContractServiceOrderAttachmentList: Array<ServiceOrderAttachment> = new Array<ServiceOrderAttachment>();
}