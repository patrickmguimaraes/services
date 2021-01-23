import { Country} from "./Country";
import { IdentificationDocument} from "./IdentificationDocument";
import { User} from "./User";
import { Contact} from "./Contact";
import { Address} from "./Address";
import { Employee} from "./Employee";
import { ServiceOrder} from "./ServiceOrder";
import { Balance} from "./Balance";
import { PaymentBill} from "./PaymentBill";
import { BankAccount} from "./BankAccount";
import { Counter} from "./Counter";
import { LoanMoney} from "./LoanMoney";
import { LoanMoneyRequest} from "./LoanMoneyRequest";
import { DepartmentOfFinance} from "./DepartmentOfFinance";
import { Bill} from "./Bill";

export class Person {
  pkPerson: number;
  name: string;
  lastName: string;
  bithday: Date = new Date(new Date().setHours(12, 0, 0, 0));
  maritalStatus: number;
  status: number = 0;
  birthCountry: Country = new Country();
  responsableDepartmentOfFinanceReferenced: DepartmentOfFinance = new DepartmentOfFinance();
  personCounterReferenced: Counter = new Counter();
  personBalanceReferenced: Balance = new Balance();
  personServiceOrderReferenced: ServiceOrder = new ServiceOrder();
  personEmployeeReferenced: Employee = new Employee();
  personUserReferenced: User = new User();
  personIdentificationDocument: Array<IdentificationDocument> = new Array<IdentificationDocument>();
  personContact: Array<Contact> = new Array<Contact>();
  personAddress: Array<Address> = new Array<Address>();
  personPaymentBill: Array<PaymentBill> = new Array<PaymentBill>();
  personBankAccount: Array<BankAccount> = new Array<BankAccount>();
  personLoanMoney: Array<LoanMoney> = new Array<LoanMoney>();
  personLoanMoneyRequest: Array<LoanMoneyRequest> = new Array<LoanMoneyRequest>();
  personBill: Array<Bill> = new Array<Bill>();
}