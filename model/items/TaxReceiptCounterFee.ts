import { TaxReceiptCounterPayment} from "./TaxReceiptCounterPayment";
import { TaxReceiptCounterApproved} from "./TaxReceiptCounterApproved";
import { TaxSettingsCounter} from "./TaxSettingsCounter";
import { BalanceItem} from "./BalanceItem";

export class TaxReceiptCounterFee {
  pkTaxReceiptCounterFee: number;
  status: number = 0;
  taxReceiptCounterApproved: TaxReceiptCounterApproved = new TaxReceiptCounterApproved();
  taxSettingsCounter: TaxSettingsCounter = new TaxSettingsCounter();
  balanceItem: BalanceItem = new BalanceItem();
  taxReceiptCounterFeeTaxReceiptCounterPaymentReferenced: TaxReceiptCounterPayment = new TaxReceiptCounterPayment();
}