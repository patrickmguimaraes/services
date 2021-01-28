import { FinancialModule} from "./FinancialModule";
import { Attachment} from "./Attachment";

export class FinancialModuleTermsOfService {
  pkFinancialModuleTermsOfService: number;
  status: number = 0;
  financialModule: FinancialModule = new FinancialModule();
  attachment: Attachment = new Attachment();
}