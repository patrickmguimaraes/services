import { TaxSettingAttachment} from "./TaxSettingAttachment";
import { UserAttachment} from "./UserAttachment";
import { ServiceTemplateContract} from "./ServiceTemplateContract";
import { UserSettings} from "./UserSettings";
import { ApprovalAttachment} from "./ApprovalAttachment";
import { ServiceOrderAttachment} from "./ServiceOrderAttachment";
import { CategoryContractTemplate} from "./CategoryContractTemplate";
import { IdentificationDocumentAttachment} from "./IdentificationDocumentAttachment";
import { TaxReceiptCounterApproved} from "./TaxReceiptCounterApproved";
import { LoanBankProgramContract} from "./LoanBankProgramContract";
import { FinancialModule} from "./FinancialModule";
import { Bill} from "./Bill";
import { BillFinancialModuleFunction} from "./BillFinancialModuleFunction";
import { FinancialModuleTermsOfService} from "./FinancialModuleTermsOfService";

export class Attachment {
  pkAttachment: number;
  name: string;
  date: Date = new Date();;
  type: string;
  path: string;
  status: number = 0;
  attachmentFinancialModuleTermsOfServiceReferenced: FinancialModuleTermsOfService = new FinancialModuleTermsOfService();
  attachmentBillFinancialModuleFunctionReferenced: BillFinancialModuleFunction = new BillFinancialModuleFunction();
  attachmentBillReferenced: Bill = new Bill();
  logoFinancialModuleReferenced: FinancialModule = new FinancialModule();
  attachmentTaxReceiptCounterApprovedReferenced: TaxReceiptCounterApproved = new TaxReceiptCounterApproved();
  attachmentApprovalAttachmentReferenced: ApprovalAttachment = new ApprovalAttachment();
  attachmentTaxSettingAttachment: Array<TaxSettingAttachment> = new Array<TaxSettingAttachment>();
  attachmentUserAttachment: Array<UserAttachment> = new Array<UserAttachment>();
  templateAttachmentServiceTemplateContract: Array<ServiceTemplateContract> = new Array<ServiceTemplateContract>();
  signatureAttachmentServiceTemplateContract: Array<ServiceTemplateContract> = new Array<ServiceTemplateContract>();
  signatureAttachmentUserSettings: Array<UserSettings> = new Array<UserSettings>();
  attachmentServiceOrderAttachment: Array<ServiceOrderAttachment> = new Array<ServiceOrderAttachment>();
  attachmentCategoryContractTemplate: Array<CategoryContractTemplate> = new Array<CategoryContractTemplate>();
  attachmentIdentificationDocumentAttachment: Array<IdentificationDocumentAttachment> = new Array<IdentificationDocumentAttachment>();
  templateContractLoanBankProgramContract: Array<LoanBankProgramContract> = new Array<LoanBankProgramContract>();
}