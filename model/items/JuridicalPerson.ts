import { Country} from "./Country";
import { IdentificationDocument} from "./IdentificationDocument";
import { User} from "./User";
import { Contact} from "./Contact";
import { Address} from "./Address";
import { Employee} from "./Employee";
import { Service} from "./Service";
import { ServiceOrder} from "./ServiceOrder";
import { Balance} from "./Balance";
import { Bank} from "./Bank";
import { BankAccount} from "./BankAccount";
import { HelpCenterAssistant} from "./HelpCenterAssistant";
import { Counter} from "./Counter";
import { LoanMoney} from "./LoanMoney";
import { LoanMoneyRequest} from "./LoanMoneyRequest";
import { BankBranch} from "./BankBranch";
import { DepartmentOfFinance} from "./DepartmentOfFinance";
import { Bill} from "./Bill";

export class JuridicalPerson {
  pkJuridicalPerson: number;
  name: string;
  socialReason: string;
  openedDate: Date = new Date(new Date().setHours(12, 0, 0, 0));
  companyType: number = 1;
  legalStructure: number = 1;
  originCountry: Country = new Country();
  juridicalPersonDepartmentOfFinanceReferenced: DepartmentOfFinance = new DepartmentOfFinance();
  juridicalPersonBankBranchReferenced: BankBranch = new BankBranch();
  juridicalPersonCounterReferenced: Counter = new Counter();
  juridicalPersonHelpCenterAssistantReferenced: HelpCenterAssistant = new HelpCenterAssistant();
  juridicalPersonBankReferenced: Bank = new Bank();
  juridicalPersonBalanceReferenced: Balance = new Balance();
  juridicalPersonServiceOrderReferenced: ServiceOrder = new ServiceOrder();
  juridicalPersonEmployeeReferenced: Employee = new Employee();
  juridicalPersonUserReferenced: User = new User();
  juridicalPersonIdentificationDocumentList: Array<IdentificationDocument> = new Array<IdentificationDocument>();
  juridicalPersonContactList: Array<Contact> = new Array<Contact>();
  juridicalPersonAddressList: Array<Address> = new Array<Address>();
  juridicalPersonServiceList: Array<Service> = new Array<Service>();
  juridicalPersonBankAccountList: Array<BankAccount> = new Array<BankAccount>();
  juridicalPersonLoanMoneyList: Array<LoanMoney> = new Array<LoanMoney>();
  juridicalPersonLoanMoneyRequestList: Array<LoanMoneyRequest> = new Array<LoanMoneyRequest>();
  juridicalPersonBillList: Array<Bill> = new Array<Bill>();
}