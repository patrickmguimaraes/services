import { ServiceTemplateContract} from "./ServiceTemplateContract";
import { Attachment} from "./Attachment";

export class CategoryContractTemplate {
  pkCategoryContractTemplate: number;
  attachment: Attachment = new Attachment();
  categoryContractTemplateServiceTemplateContract: Array<ServiceTemplateContract> = new Array<ServiceTemplateContract>();
}