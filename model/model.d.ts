
        
export interface Address {
  pkAddress: number;
  street: string;
  number: string;
  neighborhood: string;
  zipCode: string | null;
  city: string;
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
  fkTaxSettings: number | null;
  fkWithdrawMoney: number | null;
  fkServiceContract: number | null;
  fkMainBankAccount: number | null;
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
  value: string;
  status: number;
  fkJuridicalPerson: number;
  fkCurrency: number | null;
}

export interface Bank {
  pkBank: number;
  name: string;
  code: string;
  status: number;
  fkCountry: number | null;
}

export interface BankAccount {
  pkBankAccount: number;
  branch: string;
  account: string;
  validated: string | null;
  status: number;
  fkCurrency: number;
  fkJuridicalPerson: number | null;
  fkPerson: number | null;
  fkUserPayment: number | null;
}

export interface Category {
  pkCategory: number;
  name: string;
  code: string | null;
  status: number;
  fkCategory: number | null;
}

export interface City {
  pkCity: number;
  name: string;
  status: number;
  fkState: number;
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

export interface Country {
  pkCountry: number;
  name: string;
  abbreviation: string;
  status: number;
  fkLanguage: number;
}

export interface CreditCardBrand {
  pkCreditCardBrand: number;
  name: string;
  code: string;
  status: number;
  fkCountry: number | null;
}

export interface Currency {
  pkCurrency: number;
  name: string;
  code: string;
  symbol: string;
  status: number;
  fkCountry: number | null;
}

export interface Deposit {
  pkDeposit: number;
  value: string;
  date: string;
  note: string;
  status: number;
  fkFromMainBankAccount: number;
  fkToBankAccount: number;
  fkBalance: number;
  fkWithdrawMoney: number;
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
  start: string;
  status: number;
  fkPerson: number;
  fkJuridicalPerson: number;
}

export interface EmployeeResponsibility {
  pkEmployeeResponsibility: number;
  position: string;
  salary: string;
  commission: string;
  start: string;
  end: string | null;
  status: number;
  fkEmployee: number;
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
  dateOfIssue: string | null;
  dateOfExpiration: string | null;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
  fkState: number | null;
  fkCountry: number | null;
}

export interface JuridicalPerson {
  pkJuridicalPerson: number;
  name: string;
  socialReason: string;
  openedDate: string;
  pkOriginCountry: number | null;
}

export interface Language {
  pkLanguage: number;
  name: string;
  status: number;
  fkCountry: number | null;
}

export interface MainBankAccount {
  pkMainBankAccount: number;
  balance: string;
  status: number;
  fkBankAccount: number;
  fkCountry: number;
  fkScreenApproval: number;
}

export interface Payment {
  pkPayment: number;
  type: number;
  date: string;
  value: string;
  note: string | null;
  status: number;
  fkCurrency: number;
  fkUserPayment: number | null;
  fkMainBankAccount: number | null;
}

export interface PaymentBill {
  pkPaymentBill: number;
  code: string | null;
  dateOfExpire: string | null;
  status: number;
  fkPayment: number;
  fkPerson: number;
}

export interface PaymentCredit {
  pkPaymentCredit: number;
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
  status: number;
  fkBalance: number;
  fkPayment: number;
}

export interface Receive {
  pkReceive: number;
  value: string | null;
  status: number;
  pkServiceOrder: number;
  pkJuridicalPerson: number;
}

export interface ReceivePayment {
  pkReceivePayment: number;
  status: number;
  fkReceive: number;
  fkServiceOrderPayment: number;
  fkBalance: number | null;
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
  fkJuridicalPerson: number;
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
  withContract: boolean;
  status: number;
  fkEmployeeResponsibility: number;
  fkAddress: number | null;
  fkServiceCategory: number | null;
}

export interface ServiceAppointment {
  pkServiceAppointment: number;
  start: string | null;
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

export interface ServiceContract {
  pkServiceContract: number;
  status: number;
  filedDate: string;
  expiredDate: string | null;
  pkService: number | null;
  fkTemplateAttachment: number | null;
  fkSignatureAttachment: number | null;
  fkScreenApproval: number | null;
}

export interface ServiceOrder {
  pkServiceOrder: number;
  number: string;
  code: string | null;
  date: string;
  cost: string;
  discount: string;
  total: string;
  servicesCharge: string;
  primaryPayment: number;
  status: number;
  fkAppointment: number;
  fkPerson: number | null;
  fkJuridicalPerson: number;
  fkAddress: number | null;
}

export interface ServiceOrderPayment {
  pkServiceOrderPayment: number;
  number: number;
  date: string;
  value: string;
  paymentType: number;
  status: number;
  fkServiceOrder: number;
  fkPayment: number | null;
}

export interface ServiceOrderTax {
  pkServiceOrderTax: number;
  date: string | null;
  tax: string;
  status: number;
  fkServiceOrder: number;
  fkBalance: number;
  fkTaxSetting: number | null;
}

export interface ServiceUnavailable {
  pkServiceUnavailable: number;
  start: string;
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

export interface TaxSettingAttachment {
  pkTaxSettingAttachment: number;
  name: string;
  status: number;
  fkTaxSetting: number;
  fkAttachment: number;
}

export interface TaxSettings {
  pkTaxSettings: number;
  tax: string;
  filedDate: string;
  approvatedDate: string | null;
  expiredDate: string | null;
  observation: string;
  localType: number;
  counterNeeded: boolean;
  status: number;
  fkCity: number;
  fkScreenApproval: number;
  fkMainBankAccount: number;
}

export interface TaxSettingsCategory {
  pkTaxSettingsCategory: number;
  tax: string | null;
  localType: number;
  freeTax: boolean;
  counterNeeded: boolean;
  status: number;
  fkTaxSettings: number | null;
  fkCategory: number | null;
  fkMainBankAccount: number | null;
}

export interface User {
  pkUser: number;
  username: string;
  password: string;
  dateOfCreatingAccount: string;
  dateOfFinishingAccount: string | null;
  facebookAccount: string | null;
  status: number;
  fkPerson: number | null;
  fkJuridicalPerson: number | null;
  fkEmployee: number | null;
}

export interface UserActivation {
  pkUserActivation: number;
  type: number;
  code: string;
  date: string;
  dateActive: string | null;
  status: number;
  fkUser: number;
  fkEmail: number | null;
  fkSms: number | null;
}

export interface UserAttachment {
  pkUserAttachment: number;
  fkAttachment: number;
  fkUser: number;
  fkIdentificationDocument: number | null;
  isLogo: boolean;
}

export interface UserPayment {
  pkUserPayment: number;
  type: number;
  default: boolean;
  status: number;
  fkUser: number;
}

export interface UserPaymentCreditCard {
  pkUserPaymentCreditCard: number;
  cardNumber: string;
  nameOnCard: string;
  dateOfExpirity: string;
  fkUserPayment: number;
  fkCreditCardBrand: number | null;
}

export interface UserPaymentDigitalWallet {
  pkUserPaymentDigitalWallet: number;
  userCodeAccess: string;
  datePairedUp: string;
  status: number;
  fkUserPayment: number;
  fkDigitalWallet: number;
}

export interface UserSettings {
  pkUserSettings: number;
  status: number;
  fkUser: number;
  fkSignatureAttachment: number | null;
}

export interface WithdrawMoney {
  pkWithdrawMoney: number;
  value: string;
  date: string;
  status: number;
  fkCurrency: number;
  fkBankAccount: number;
  fkUser: number;
  fkScreenApproval: number | null;
}

      