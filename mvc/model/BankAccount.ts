import { PaymentDebt} from "./PaymentDebt";
import { Currency} from "./Currency";
import { JuridicalPerson} from "./JuridicalPerson";
import { Person} from "./Person";
import { Bank} from "./Bank";
import { BankBranch} from "./BankBranch";
import { TransferMoney} from "./TransferMoney";
import { TaxFormula} from "./TaxFormula";
import { PaymentTransfer} from "./PaymentTransfer";
import { Bill} from "./Bill";

export class BankAccount {
  pkBankAccount: number;
  branch: string;
  account: string;
  validatedAccount: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  currency: Currency = new Currency();
  juridicalPerson: JuridicalPerson = new JuridicalPerson();
  person: Person = new Person();
  bank: Bank = new Bank();
  bankBranch: BankBranch = new BankBranch();
  bankAccountPaymentDebtList: Array<PaymentDebt> = new Array<PaymentDebt>();
  toBankAccountTransferMoneyList: Array<TransferMoney> = new Array<TransferMoney>();
  bankAccountTaxFormulaList: Array<TaxFormula> = new Array<TaxFormula>();
  bankAccountPaymentTransferList: Array<PaymentTransfer> = new Array<PaymentTransfer>();
  bankAccountBillList: Array<Bill> = new Array<Bill>();
}