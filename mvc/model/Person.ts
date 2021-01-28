import { Country} from "./Country";
import { IdentificationDocument} from "./IdentificationDocument";
import { Contact} from "./Contact";
import { Address} from "./Address";
import { PaymentBill} from "./PaymentBill";
import { BankAccount} from "./BankAccount";
import { LoanMoney} from "./LoanMoney";
import { LoanMoneyRequest} from "./LoanMoneyRequest";
import { Bill} from "./Bill";

export class Person {
  pkPerson: number;
  name: string;
  lastName: string;
  bithday: Date = new Date(new Date().setHours(12, 0, 0, 0));
  passedAway: Date = new Date(new Date().setHours(12, 0, 0, 0));
  maritalStatus: number;
  status: number = 0;
  birthCountry: Country = new Country();
  personIdentificationDocumentList: Array<IdentificationDocument> = new Array<IdentificationDocument>();
  personContactList: Array<Contact> = new Array<Contact>();
  personAddressList: Array<Address> = new Array<Address>();
  personPaymentBillList: Array<PaymentBill> = new Array<PaymentBill>();
  personBankAccountList: Array<BankAccount> = new Array<BankAccount>();
  personLoanMoneyList: Array<LoanMoney> = new Array<LoanMoney>();
  personLoanMoneyRequestList: Array<LoanMoneyRequest> = new Array<LoanMoneyRequest>();
  personBillList: Array<Bill> = new Array<Bill>();
}