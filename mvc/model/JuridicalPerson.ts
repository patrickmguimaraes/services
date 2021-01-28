import { Country} from "./Country";
import { IdentificationDocument} from "./IdentificationDocument";
import { Contact} from "./Contact";
import { Address} from "./Address";
import { Service} from "./Service";
import { BankAccount} from "./BankAccount";
import { LoanMoney} from "./LoanMoney";
import { LoanMoneyRequest} from "./LoanMoneyRequest";
import { Bill} from "./Bill";

export class JuridicalPerson {
  pkJuridicalPerson: number;
  name: string;
  socialReason: string;
  openedDate: Date = new Date(new Date().setHours(12, 0, 0, 0));
  companyType: number = 1;
  legalStructure: number = 1;
  originCountry: Country = new Country();
  juridicalPersonIdentificationDocumentList: Array<IdentificationDocument> = new Array<IdentificationDocument>();
  juridicalPersonContactList: Array<Contact> = new Array<Contact>();
  juridicalPersonAddressList: Array<Address> = new Array<Address>();
  juridicalPersonServiceList: Array<Service> = new Array<Service>();
  juridicalPersonBankAccountList: Array<BankAccount> = new Array<BankAccount>();
  juridicalPersonLoanMoneyList: Array<LoanMoney> = new Array<LoanMoney>();
  juridicalPersonLoanMoneyRequestList: Array<LoanMoneyRequest> = new Array<LoanMoneyRequest>();
  juridicalPersonBillList: Array<Bill> = new Array<Bill>();
}