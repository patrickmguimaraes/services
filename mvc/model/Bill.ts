import { PaymentBill} from "./PaymentBill";
import { BankAccount} from "./BankAccount";
import { Currency} from "./Currency";
import { JuridicalPerson} from "./JuridicalPerson";
import { Person} from "./Person";
import { Attachment} from "./Attachment";
import { BalanceItem} from "./BalanceItem";
import { BillFinancialModuleFunction} from "./BillFinancialModuleFunction";

export class Bill {
  pkBill: number;
  code: string;
  number: string;
  controlCode: String;
  type: number = 1;
  issueDate: Date = new Date(new Date().setHours(12, 0, 0, 0));
  dueDate: Date = new Date(new Date().setHours(12, 0, 0, 0));
  expirationDate: Date = new Date(new Date().setHours(12, 0, 0, 0));
  value: number = 0.0;
  discount: Number = 0.0;
  interest: Number = 0.0;
  fee: Number = 0.0;
  total: Number = 0.0;
  status: number = 0;
  paymentBill: PaymentBill = new PaymentBill();
  bankAccount: BankAccount = new BankAccount();
  currency: Currency = new Currency();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  person: Person = new Person();
  attachment: Attachment = new Attachment();
  balanceItemFee: BalanceItem = new BalanceItem();
  billBillFinancialModuleFunctionList: Array<BillFinancialModuleFunction> = new Array<BillFinancialModuleFunction>();
}