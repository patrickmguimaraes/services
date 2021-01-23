import { FinancialModule} from "./FinancialModule";
import { Attachment} from "./Attachment";

export class FinancialModuleTermsOfService {
  pkFinancialModuleTermsOfService: number;
  status: number;
  financialModule: FinancialModule = new FinancialModule();
  attachment: Attachment = new Attachment();
}