
export interface Address {
  pkAddress: number;
  type: number;
  street: string;
  number: string;
  neighborhood: string;
  zipCode: string | null;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
  fkCity: number;
}

export interface Appointment {
  pkAppointment: number;
  number: string;
  cost: string;
  discount: string;
  date: string;
  status: number;
  fkUser: number;
}

export interface Approval {
  pkApproval: number;
  observation: string;
  date: string;
  status: number;
  fkUser: number;
  fkScreenApproval: number;
}

export interface ApprovalAttachment {
  pkApprovalAttachment: number;
  status: number;
  fkApproval: number;
  fkAttachment: number;
}

export interface Attachment {
  pkAttachment: number;
  name: string;
  date: string;
  type: string;
  path: string;
  status: number;
}

export interface Balance {
  pkBalance: number;
  name: string;
  value: string;
  consolidatedValue: string | null;
  consolidatedDate: string | null;
  status: number;
  fkCurrency: number;
  fkJuridicalPerson: number | null;
  fkPerson: number | null;
}

export interface BalanceBlocked {
  pkBalanceBlocked: number;
  note: string;
  value: string;
  status: number;
  fkLoanMoney: number;
  fkBalance: number;
}

export interface BalanceItem {
  pkBalanceItem: number;
  note: string;
  date: string;
  value: string;
  status: number;
  fkBalance: number | null;
  fkBalanceOrigin: number | null;
  fkBalanceBlocked: number | null;
}

export interface Bank {
  pkBank: number;
  name: string;
  code: string;
  status: number;
  fkCountry: number | null;
  fkJuridicalPerson: number | null;
}

export interface BankAccount {
  pkBankAccount: number;
  branch: string;
  account: string;
  validatedAccount: string | null;
  status: number;
  fkCurrency: number;
  fkJuridicalPerson: number | null;
  fkPerson: number | null;
  fkBank: number;
  fkBankBranch: number | null;
}

export interface BankBranch {
  pkBankBranch: number;
  branch: string;
  fkBank: number;
  fkJuridicalPerson: number;
}

export interface Bill {
  pkBill: number;
  code: string;
  number: string;
  controlCode: string | null;
  type: number;
  issueDate: string;
  dueDate: string;
  expirationDate: string;
  value: string;
  discount: string | null;
  interest: string | null;
  fee: string | null;
  total: string | null;
  status: number;
  fkPaymentBill: number;
  fkBankAccount: number;
  pkCurrency: number;
  fkJuridicalPerson: number | null;
  fkPerson: number | null;
  fkAttachment: number;
  fkBalanceItemFee: number | null;
}

export interface BillFinancialModuleFunction {
  pkBillFinancialModuleFunction: number;
  status: number;
  fkBill: number;
  fkFinancialModuleFunction: number;
  fkAttachment: number | null;
}

export interface Category {
  pkCategory: number;
  name: string;
  code: string | null;
  status: number;
  fkCategory: number | null;
  fkCountry: number | null;
}

export interface CategoryContractTemplate {
  pkCategoryContractTemplate: number;
  pkAttachment: number | null;
}

export interface City {
  pkCity: number;
  name: string;
  abbreviation: string;
  status: number;
  fkState: number;
  fkDepartmentOfFinance: number | null;
  fkBalance: number | null;
}

export interface CityAccount {
  pkCityAccount: number;
  status: number;
  fkCity: number;
  fkBankAccount: number;
  fkTax: number;
}

export interface Contact {
  pkContact: number;
  type: string;
  value: string;
  expirationDate: string | null;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
}

export interface Counter {
  pkCounter: number;
  dateApproved: string | null;
  status: number;
  fkJuridicalPerson: number;
  fkPerson: number | null;
}

export interface Country {
  pkCountry: number;
  name: string;
  abbreviation: string;
  status: number;
  timeZone: number | null;
  fkLanguage: number;
}

export interface CreditCardBrand {
  pkCreditCardBrand: number;
  name: string;
  code: string;
  status: number;
  fkCountry: number | null;
}

export interface CreditCardFinancialModuleFunction {
  pkCreditCardFinancialModuleFunction: number;
  status: number;
  fkFinancialModuleFunction: number | null;
  fkPaymentCredit: number | null;
}

export interface Currency {
  pkCurrency: number;
  name: string;
  code: string;
  symbol: string;
  status: number;
  fkCountry: number | null;
}

export interface DepartmentOfFinance {
  pkDepartmentOfFinance: number;
  region: string | null;
  status: number;
  fkJuridicalPerson: number;
  fkResponsable: number;
  fkAddress: number;
  fkState: number;
}

export interface DigitalWallet {
  pkDigitalWallet: number;
  name: string;
  code: string;
  status: number;
  fkCountry: number | null;
}

export interface Email {
  pkEmail: number;
  subject: string;
  emailText: string;
  fkEmailController: number | null;
  fkContact: number | null;
}

export interface EmailController {
  pkEmailController: number;
  type: number;
  imap: string;
  smtp: string;
  fullName: string;
  email: string;
  password: string;
  status: number;
  fkCountry: number;
}

export interface Employee {
  pkEmployee: number;
  profession: string;
  status: number;
  fkPerson: number;
  fkJuridicalPerson: number;
}

export interface EmployeeResponsibility {
  pkEmployeeResponsibility: number;
  position: string;
  salary: string;
  commission: string;
  beginning: string;
  end: string | null;
  status: number;
  fkEmployee: number;
}

export interface FinanceModuleApproval {
  pkFinanceModuleApproval: number;
  status: number;
  fkFinancialModule: number | null;
  fkApproval: number | null;
}

export interface FinancialModule {
  pkFinancialModule: number;
  date: string;
  wallet: string | null;
  status: number;
  fkMainBankAccount: number;
  fkLogo: number;
  fkScreenApproval: number;
  fkUser: number;
}

export interface FinancialModuleFunction {
  pkFinancialModuleFunction: number;
  type: number;
  name: string;
  information: string | null;
  status: number;
  fkFinancialModule: number;
}

export interface FinancialModuleTermsOfService {
  pkFinancialModuleTermsOfService: number;
  status: number;
  fkFinancialModule: number;
  fkAttachment: number;
}

export interface FiscalModule {
  pkFiscalModule: number;
  code: string;
  url: string;
  status: number;
  fkTaxSettings: number;
}

export interface FiscalModuleFunction {
  pkFiscalModuleFunction: number;
  name: string;
  code: string;
  url: string;
  template: string;
  status: number;
  fkFiscalModule: number;
}

export interface FiscalModuleFunctionTag {
  pkFiscalModuleFunctionTag: number;
  sequence: number;
  tag: string | null;
  value: string | null;
  length: number | null;
  completeWithZeroRight: boolean;
  completeWithZeroLeft: boolean;
  status: number;
  fkTagReference: number;
  fkFiscalModuleFunctionTag: number | null;
}

export interface HelpCenter {
  pkHelpCenter: number;
  number: number;
  protocol: string;
  date: string;
  message: string;
  status: number;
  fkContactPhone: number | null;
  fkContactEmail: number | null;
  fkHelpCenterServicesTypes: number;
  fkUser: number;
}

export interface HelpCenterAssistant {
  pkHelpCenterAssistant: number;
  status: number;
  fkJuridicalPerson: number;
}

export interface HelpCenterMessages {
  pkHelpCenterMessages: number;
  message: string;
  date: string;
  status: number;
  fkUser: number;
  fkUserCompany: number | null;
  fkHelpCenterAssistant: number | null;
}

export interface HelpCenterService {
  pkHelpCenterService: number;
  date: string;
  message: string;
  status: number;
  fkHelpCenter: number;
  fkUser: number;
  pkSms: number | null;
  fkEmail: number | null;
  fkSms: number | null;
}

export interface HelpCenterServicesTypes {
  pkHelpCenterServicesTypes: number;
  name: string;
  type: number;
  status: number;
  fkHelpCenterServicesTypes: number | null;
}

export interface HelpCenterTypicalAsks {
  pkHelpCenterTypicalAsks: number;
  number: number | null;
  ask: string;
  answer: string;
  fkHelpCenterTypicalAsks: number | null;
  fkLanguage: number;
}

export interface IdentificationDocument {
  pkIdentificationDocument: number;
  type: string;
  value: string;
  issueDate: string | null;
  expirationDate: string | null;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
  fkState: number | null;
  fkCountry: number | null;
}

export interface IdentificationDocumentAttachment {
  pkIdentificationDocumentAttachment: number;
  status: number;
  fkIdentificationDocument: number | null;
  fkAttachment: number | null;
}

export interface JuridicalPerson {
  pkJuridicalPerson: number;
  name: string;
  socialReason: string;
  openedDate: string;
  companyType: number;
  legalStructure: number;
  fkOriginCountry: number | null;
}

export interface Language {
  pkLanguage: number;
  name: string;
  status: number;
  fkCountry: number | null;
}

export interface LoanBankProgram {
  pkLoanBankProgram: number;
  name: string;
  beginning: string;
  end: string;
  interestRate: string;
  status: number;
  fkBank: number;
  fkLoanBankProgramProfile: number | null;
  fkScreenApproval: number | null;
}

export interface LoanBankProgramApproval {
  pkLoanBankProgramApproval: number;
  status: number;
  fkApproval: number | null;
  fkLoanBankProgram: number | null;
}

export interface LoanBankProgramContract {
  pkLoanBankProgramContract: number;
  status: number;
  fkTemplateContract: number;
  fkLoanBankProgram: number | null;
}

export interface LoanBankProgramProfile {
  pkLoanBankProgramProfile: number;
  forCompany: boolean;
  minimumMonths: number;
  maximumMonths: number;
  minimumSpend: string | null;
  minimumSpendSinceDate: string | null;
  status: number;
}

export interface LoanBankProgramProfileBranch {
  pkLoanBankProgramProfileBranch: number;
  status: number;
  fkLoanBankProgramProfile: number | null;
  fkBankBranch: number | null;
}

export interface LoanBankProgramProfileCategory {
  pkLoanBankProgramProfileCategory: number;
  status: number | null;
  fkCategory: number;
  fkLoanBankProgramProfile: number;
}

export interface LoanMoney {
  pkLoanMoney: number;
  date: string;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
  fkLoanMoneyRequest: number;
  fkPayment: number | null;
  fkCurrency: number | null;
}

export interface LoanMoneyRequest {
  pkLoanMoneyRequest: number;
  value: string;
  months: number;
  date: string;
  status: number;
  fkJuridicalPerson: number | null;
  fkPerson: number | null;
  fkLoanBankProgram: number;
}

export interface Log {
  pkLog: number;
  type: number;
  title: string;
  message: string;
  date: string;
  fkCountry: number;
}

export interface LogBackuped {
  pkLogBackuped: number;
  path: string;
  date: string | null;
  beginning: string;
  end: string;
  status: number;
  fkScreenApproval: number;
  fkCountry: number;
  fkUser: number | null;
}

export interface LogBackupedApproval {
  pkLogBackupedApproval: number;
  status: number;
  fkLogBackuped: number;
  fkApproval: number;
}

export interface MainBankAccount {
  pkMainBankAccount: number;
  status: number;
  fkBalance: number;
  fkBankAccount: number;
  fkCountry: number;
  fkScreenApproval: number;
  fkUserCreator: number;
}

export interface MainBankAccountApproval {
  pkMainBankAccountApproval: number;
  status: number;
  fkMainBankAccount: number;
  fkApproval: number;
}

export interface Payment {
  pkPayment: number;
  type: number;
  date: string;
  value: string;
  note: string;
  status: number;
  fkCurrency: number;
  fkBalanceItem: number;
  fkMainBankAccount: number;
}

export interface PaymentBalance {
  pkPaymentBalance: number;
  status: number;
  fkPayment: number;
}

export interface PaymentBill {
  pkPaymentBill: number;
  status: number;
  fkPayment: number;
  fkPerson: number;
}

export interface PaymentCredit {
  pkPaymentCredit: number;
  transactionId: string;
  code: string;
  status: number;
  fkPayment: number;
  fkUserPaymentCreditCard: number;
}

export interface PaymentDebt {
  pkPaymentDebt: number;
  status: number;
  fkPayment: number;
  fkBankAccount: number;
}

export interface PaymentDigitalWallet {
  pkPaymentDigitalWallet: number;
  status: number;
  fkPayment: number | null;
  fkUserPaymentDigitalWallet: number | null;
}

export interface PaymentTransfer {
  pkPaymentTransfer: number;
  status: number;
  fkPayment: number | null;
  fkBankAccount: number | null;
}

export interface Person {
  pkPerson: number;
  name: string;
  lastName: string;
  bithday: string;
  maritalStatus: number;
  status: number;
  fkBirthCountry: number;
}

export interface PrepayTax {
  pkPrepayTax: number;
  value: string;
  date: string;
  status: number;
  fkUser: number;
  fkPayment: number | null;
  fkBalanceItem: number | null;
}

export interface Refound {
  pkRefound: number;
  status: number;
  fkBalanceItem: number;
  fkBalanceBlocked: number | null;
}

export interface Screen {
  pkScreen: number;
  id: number;
  name: string;
  path: string;
  status: number;
}

export interface ScreenApproval {
  pkScreenApproval: number;
  pathComplement: string | null;
  status: number;
  fkScreen: number;
  fkCountry: number | null;
}

export interface ScreenPermission {
  pkPermissionPermission: number;
  permission: number;
  status: number;
  fkScreen: number;
  fkUser: number;
}

export interface Service {
  pkService: number;
  cost: string;
  time: number;
  discountRate: string;
  cancelRate: string;
  withContract: boolean;
  status: number;
  fkEmployeeResponsibility: number | null;
  fkAddress: number | null;
  fkServiceCategory: number;
  fkJuridicalPerson: number | null;
}

export interface ServiceAppointment {
  pkServiceAppointment: number;
  beginning: string | null;
  end: string | null;
  status: number;
  fkService: number;
  fkAppointment: number;
}

export interface ServiceCategory {
  pkServiceCategory: number;
  name: string;
  status: number;
  fkCategory: number | null;
}

export interface ServiceOrder {
  pkServiceOrder: number;
  code: string;
  date: string;
  cost: string;
  discount: string;
  fee: string;
  total: string;
  primaryPayment: number;
  status: number;
  fkAppointment: number;
  fkJuridicalPerson: number;
  fkCurrency: number;
  fkPerson: number | null;
  fkAddress: number | null;
}

export interface ServiceOrderAttachment {
  pkServiceOrderAttachment: number;
  status: number;
  fkServiceOrder: number;
  pkServiceContract: number | null;
  fkUser: number | null;
  fkAttachment: number | null;
}

export interface ServiceOrderCanceled {
  pkServiceOrderCanceled: number;
  date: string | null;
  detail: string;
  status: number;
  pkServiceOrder: number;
  fkUser: number;
}

export interface ServiceOrderPayment {
  pkServiceOrderPayment: number;
  number: number;
  note: string | null;
  date: string;
  value: string;
  paymentType: number;
  status: number;
  fkServiceOrder: number;
  fkPayment: number | null;
  fkBalanceItem: number | null;
}

export interface ServiceOrderRefund {
  pkServiceOrderRefund: number;
  value: string;
  fee: string;
  date: string | null;
  status: number;
  fkServiceOrderPayment: number;
  fkServiceOrderCanceled: number;
  fkRefound: number | null;
  fkRefoundFee: number | null;
}

export interface ServiceOrderTax {
  pkServiceOrderTax: number;
  note: string;
  date: string;
  value: string;
  status: number;
  fkServiceOrder: number;
  fkTaxFormula: number;
  fkTaxSetting: number;
  fkTaxReceipt: number | null;
}

export interface ServiceTemplateContract {
  pkServiceTemplateContract: number;
  beginning: string;
  end: string | null;
  status: number;
  fkCategoryContractTemplate: number;
  fkService: number;
  fkTemplateAttachment: number;
  fkSignatureAttachment: number;
}

export interface ServiceUnavailable {
  pkServiceUnavailable: number;
  beginning: string;
  end: string | null;
  status: number;
  fkService: number;
}

export interface Sms {
  pkSms: number;
  smsText: string;
  status: number;
  fkSmsController: number | null;
}

export interface SmsController {
  pkSmsController: number;
  type: number;
  number: string;
  status: number;
  fkCountry: number;
}

export interface State {
  pkState: number;
  name: string;
  abbreviation: string;
  status: number;
  fkCountry: number;
}

export interface TagReference {
  pkTagReference: number;
  code: string;
  name: string;
  status: number;
  fkCountry: number | null;
}

export interface Tax {
  pkTax: number;
  name: string;
  status: number;
  fkCountry: number | null;
}

export interface TaxFormula {
  pkTaxFormula: number;
  number: number;
  rate: string | null;
  companyType: number;
  status: number;
  fkTax: number;
  fkTaxSettings: number | null;
  fkTaxFormula: number | null;
  fkBankAccount: number | null;
  fkTaxSettingsCategory: number | null;
}

export interface TaxReceipt {
  pkTaxReceipt: number;
  code: string;
  date: string;
  dateCanceled: string | null;
  status: number;
  fkUser: number;
  fkEmail: number;
  fkServiceOrder: number;
  fkCity: number;
  pkServiceOrderCanceled: number | null;
  fkTaxReceiptCounterApproved: number | null;
}

export interface TaxReceiptCanceled {
  pkTaxReceiptCanceled: number;
  date: string | null;
  status: number;
  fkTaxReceipt: number;
  fkFiscalModuleFunction: number;
  fkTaxReceiptFiscalModule: number;
}

export interface TaxReceiptCounterApproved {
  pkTaxReceiptCounterApproved: number;
  date: string;
  status: number;
  fkCounter: number;
  fkAttachment: number | null;
}

export interface TaxReceiptCounterFee {
  pkTaxReceiptCounterFee: number;
  status: number;
  pkTaxReceiptCounterApproved: number;
  pkTaxSettingsCounter: number;
  fkBalanceItem: number;
}

export interface TaxReceiptCounterPayment {
  pkTaxReceiptCounterPayment: number;
  status: number;
  fkTaxReceiptCounterApproved: number;
  fkTransferMoney: number | null;
  fkTaxReceiptCounterFee: number | null;
}

export interface TaxReceiptFiscalModule {
  pkTaxReceiptFiscalModule: number;
  isSendingInGroup: boolean;
  dateSent: string | null;
  answeredRevenueItemCode: string | null;
  status: number;
  fkFiscalModuleFunction: number;
  fkTaxReceipt: number;
}

export interface TaxSettingAttachment {
  pkTaxSettingAttachment: number;
  name: string;
  status: number;
  fkTaxSetting: number;
  fkAttachment: number;
}

export interface TaxSettings {
  pkTaxSettings: number;
  filedDate: string;
  approvatedDate: string | null;
  expiredDate: string | null;
  observation: string;
  localType: number;
  hasRevenue: boolean;
  transferTaxPeriod: number;
  transferTaxDay: number;
  status: number;
  fkCity: number;
  fkScreenApproval: number;
  fkCityAccount: number;
  fkCounter: number;
  fkUser: number;
}

export interface TaxSettingsApproval {
  pkTaxSettingsApproval: number;
  status: number;
  fkTaxSettings: number;
  fkApproval: number;
}

export interface TaxSettingsCategory {
  pkTaxSettingsCategory: number;
  tax: string | null;
  localType: number;
  freeTax: boolean;
  status: number;
  fkTaxSettings: number | null;
  fkCategory: number | null;
}

export interface TaxSettingsCounter {
  pkTaxSettingsCounter: number;
  byPercent: string | null;
  byOrderFixedPrice: string | null;
  official: boolean;
  substituto: boolean;
  status: number;
  fkTaxSettings: number;
  fkCounter: number;
}

export interface TransferMoney {
  pkTransferMoney: number;
  type: number;
  note: string;
  value: string;
  date: string;
  identification: string;
  status: number;
  fkFromMainBankAccount: number;
  fkToBankAccount: number;
  fkCurrency: number;
  fkBalanceItem: number | null;
}

export interface User {
  pkUser: number;
  username: string;
  password: string;
  dateOfCreatingAccount: string;
  dateOfFinishingAccount: string | null;
  facebookAccount: string | null;
  useTwoStepsVerification: boolean;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
  fkEmployee: number | null;
  fkCounter: number | null;
  fkBalance: number;
}

export interface UserActivation {
  pkUserActivation: number;
  type: number;
  code: string;
  date: string;
  dateActive: string | null;
  status: number;
  fkUserLogin: number;
  fkEmail: number | null;
  fkSms: number | null;
  fkUserTwoStepsVerification: number | null;
}

export interface UserAttachment {
  pkUserAttachment: number;
  isProfilePicture: boolean;
  status: number;
  fkAttachment: number;
  fkUser: number;
  fkIdentificationDocument: number | null;
}

export interface UserLogin {
  pkUserLogin: number;
  dispositive: string;
  date: string;
  trust: boolean;
  status: number;
  fkAddress: number;
  fkUser: number | null;
}

export interface UserPayment {
  pkUserPayment: number;
  type: number;
  date: string;
  default: boolean;
  status: number;
  fkUser: number;
}

export interface UserPaymentBankAccount {
  pkUserPaymentBankAccount: number;
  fkUserPayment: number;
  fkBankAccount: number;
}

export interface UserPaymentCreditCard {
  pkUserPaymentCreditCard: number;
  cardNumber: string;
  nameOnCard: string;
  expirationDate: string;
  pairingId: string | null;
  fkCreditCardBrand: number;
  fkUserPayment: number;
  fkBillingAddress: number | null;
  pkShippingAddress: number | null;
}

export interface UserPaymentDigitalWallet {
  pkUserPaymentDigitalWallet: number;
  userCodeAccess: string;
  datePairedUp: string;
  fkDigitalWallet: number;
  fkUserPayment: number;
}

export interface UserSettings {
  pkUserSettings: number;
  status: number;
  fkUser: number;
  fkSignatureAttachment: number | null;
}

export interface UserTwoStepsVerification {
  pkUserTwoStepsVerification: number;
  dispositive: string;
  code: string;
  datePaired: string;
  status: number;
  fkUser: number | null;
}

export interface WithdrawMoney {
  pkWithdrawMoney: number;
  value: string;
  date: string;
  dateApprovated: string | null;
  status: number;
  fkTransferMoney: number;
  fkUser: number;
  fkScreenApproval: number | null;
}

export interface WithdrawMoneyApproval {
  pkWithdrawMoneyApproval: number;
  status: number;
  fkApproval: number;
  fkWithdrawMoney: number;
}

      