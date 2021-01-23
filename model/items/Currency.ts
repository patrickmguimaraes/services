import { ServiceOrder} from "./ServiceOrder";
import { Balance} from "./Balance";
import { Payment} from "./Payment";
import { BankAccount} from "./BankAccount";
import { Country} from "./Country";
import { TransferMoney} from "./TransferMoney";
import { LoanMoney} from "./LoanMoney";
import { Bill} from "./Bill";

export class Currency {
  pkCurrency: number;
  name: string;
  code: string;
  symbol: string;
  status: number;
  country: Country = new Country();
  currencyServiceOrder: Array<ServiceOrder> = new Array<ServiceOrder>();
  currencyBalance: Array<Balance> = new Array<Balance>();
  currencyPayment: Array<Payment> = new Array<Payment>();
  currencyBankAccount: Array<BankAccount> = new Array<BankAccount>();
  currencyTransferMoney: Array<TransferMoney> = new Array<TransferMoney>();
  currencyLoanMoney: Array<LoanMoney> = new Array<LoanMoney>();
  currencyBill: Array<Bill> = new Array<Bill>();
}