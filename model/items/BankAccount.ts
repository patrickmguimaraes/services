import { PaymentDebt} from "./PaymentDebt";
import { Currency} from "./Currency";
import { JuridicalPerson} from "./JuridicalPerson";
import { Person} from "./Person";
import { Bank} from "./Bank";
import { BankBranch} from "./BankBranch";
import { MainBankAccount} from "./MainBankAccount";
import { TransferMoney} from "./TransferMoney";
import { CityAccount} from "./CityAccount";
import { TaxFormula} from "./TaxFormula";
import { PaymentTransfer} from "./PaymentTransfer";
import { Bill} from "./Bill";
import { UserPaymentBankAccount} from "./UserPaymentBankAccount";

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
  bankAccountUserPaymentBankAccountReferenced: UserPaymentBankAccount = new UserPaymentBankAccount();
  bankAccountCityAccountReferenced: CityAccount = new CityAccount();
  bankAccountMainBankAccountReferenced: MainBankAccount = new MainBankAccount();
  bankAccountPaymentDebt: Array<PaymentDebt> = new Array<PaymentDebt>();
  toBankAccountTransferMoney: Array<TransferMoney> = new Array<TransferMoney>();
  bankAccountTaxFormula: Array<TaxFormula> = new Array<TaxFormula>();
  bankAccountPaymentTransfer: Array<PaymentTransfer> = new Array<PaymentTransfer>();
  bankAccountBill: Array<Bill> = new Array<Bill>();
}