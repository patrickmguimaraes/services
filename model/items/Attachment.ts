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
  attachmentTaxSettingAttachmentList: Array<TaxSettingAttachment> = new Array<TaxSettingAttachment>();
  attachmentUserAttachmentList: Array<UserAttachment> = new Array<UserAttachment>();
  templateAttachmentServiceTemplateContractList: Array<ServiceTemplateContract> = new Array<ServiceTemplateContract>();
  signatureAttachmentServiceTemplateContractList: Array<ServiceTemplateContract> = new Array<ServiceTemplateContract>();
  signatureAttachmentUserSettingsList: Array<UserSettings> = new Array<UserSettings>();
  attachmentServiceOrderAttachmentList: Array<ServiceOrderAttachment> = new Array<ServiceOrderAttachment>();
  attachmentCategoryContractTemplateList: Array<CategoryContractTemplate> = new Array<CategoryContractTemplate>();
  attachmentIdentificationDocumentAttachmentList: Array<IdentificationDocumentAttachment> = new Array<IdentificationDocumentAttachment>();
  templateContractLoanBankProgramContractList: Array<LoanBankProgramContract> = new Array<LoanBankProgramContract>();
}