import { ServiceOrderPayment} from "./ServiceOrderPayment";
import { PrepayTax} from "./PrepayTax";
import { Currency} from "./Currency";
import { BalanceItem} from "./BalanceItem";
import { MainBankAccount} from "./MainBankAccount";
import { PaymentDebt} from "./PaymentDebt";
import { PaymentBill} from "./PaymentBill";
import { PaymentCredit} from "./PaymentCredit";
import { PaymentDigitalWallet} from "./PaymentDigitalWallet";
import { LoanMoney} from "./LoanMoney";
import { PaymentTransfer} from "./PaymentTransfer";
import { PaymentBalance} from "./PaymentBalance";

export class Payment {
  pkPayment: number;
  type: number = 1;
  date: Date = new Date();;
  value: number = 0.0;
  note: string;
  status: number = 0;
  currency: Currency = new Currency();
  balanceItem: BalanceItem = new BalanceItem();
  mainBankAccount: MainBankAccount = new MainBankAccount();
  paymentPaymentBalanceReferenced: PaymentBalance = new PaymentBalance();
  paymentPaymentTransferReferenced: PaymentTransfer = new PaymentTransfer();
  paymentLoanMoneyReferenced: LoanMoney = new LoanMoney();
  paymentPaymentDigitalWalletReferenced: PaymentDigitalWallet = new PaymentDigitalWallet();
  paymentPaymentCreditReferenced: PaymentCredit = new PaymentCredit();
  paymentPaymentBillReferenced: PaymentBill = new PaymentBill();
  paymentPaymentDebtReferenced: PaymentDebt = new PaymentDebt();
  paymentServiceOrderPaymentReferenced: ServiceOrderPayment = new ServiceOrderPayment();
  paymentPrepayTaxList: Array<PrepayTax> = new Array<PrepayTax>();
}