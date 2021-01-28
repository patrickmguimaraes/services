import { Service} from "./Service";
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
  currencyServiceList: Array<Service> = new Array<Service>();
  currencyServiceOrderList: Array<ServiceOrder> = new Array<ServiceOrder>();
  currencyBalanceList: Array<Balance> = new Array<Balance>();
  currencyPaymentList: Array<Payment> = new Array<Payment>();
  currencyBankAccountList: Array<BankAccount> = new Array<BankAccount>();
  currencyTransferMoneyList: Array<TransferMoney> = new Array<TransferMoney>();
  currencyLoanMoneyList: Array<LoanMoney> = new Array<LoanMoney>();
  currencyBillList: Array<Bill> = new Array<Bill>();
}