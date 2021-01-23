import { ServiceOrderPayment} from "./ServiceOrderPayment";
import { PrepayTax} from "./PrepayTax";
import { Payment} from "./Payment";
import { TransferMoney} from "./TransferMoney";
import { Refound} from "./Refound";
import { TaxReceiptCounterFee} from "./TaxReceiptCounterFee";
import { Balance} from "./Balance";
import { BalanceBlocked} from "./BalanceBlocked";
import { Bill} from "./Bill";

export class BalanceItem {
  pkBalanceItem: number;
  note: string;
  date: Date = new Date();;
  value: number = 0.0;
  status: number = 0;
  balance: Balance = new Balance();
  balanceOrigin: Balance = new Balance();
  balanceBlocked: BalanceBlocked = new BalanceBlocked();
  balanceItemFeeBillReferenced: Bill = new Bill();
  balanceItemTaxReceiptCounterFeeReferenced: TaxReceiptCounterFee = new TaxReceiptCounterFee();
  balanceItemRefoundReferenced: Refound = new Refound();
  balanceItemTransferMoneyReferenced: TransferMoney = new TransferMoney();
  balanceItemPaymentReferenced: Payment = new Payment();
  balanceItemPrepayTaxReferenced: PrepayTax = new PrepayTax();
  balanceItemServiceOrderPaymentReferenced: ServiceOrderPayment = new ServiceOrderPayment();
}