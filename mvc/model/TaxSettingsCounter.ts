import { TaxSettings} from "./TaxSettings";
import { Counter} from "./Counter";
import { TaxReceiptCounterFee} from "./TaxReceiptCounterFee";

export class TaxSettingsCounter {
  pkTaxSettingsCounter: number;
  byPercent: Number = 0.0;
  byOrderFixedPrice: Number = 0.0;
  official: boolean = false;
  substituto: boolean = false;
  status: number = 0;
  taxSettings: TaxSettings = new TaxSettings();
  counter: Counter = new Counter();
  taxSettingsCounterTaxReceiptCounterFeeList: Array<TaxReceiptCounterFee> = new Array<TaxReceiptCounterFee>();
}