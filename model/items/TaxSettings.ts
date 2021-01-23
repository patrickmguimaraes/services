import { ServiceOrderTax} from "./ServiceOrderTax";
import { City} from "./City";
import { ScreenApproval} from "./ScreenApproval";
import { CityAccount} from "./CityAccount";
import { Counter} from "./Counter";
import { User} from "./User";
import { TaxSettingAttachment} from "./TaxSettingAttachment";
import { TaxSettingsCategory} from "./TaxSettingsCategory";
import { TaxFormula} from "./TaxFormula";
import { TaxSettingsCounter} from "./TaxSettingsCounter";
import { FiscalModule} from "./FiscalModule";
import { TaxSettingsApproval} from "./TaxSettingsApproval";

export class TaxSettings {
  pkTaxSettings: number;
  filedDate: Date = new Date();;
  approvatedDate: Date = new Date();;
  expiredDate: Date = new Date();;
  observation: string;
  localType: number = 1;
  hasRevenue: boolean = false;
  transferTaxPeriod: number = 1;
  transferTaxDay: number = 1;
  status: number = 0;
  city: City = new City();
  screenApproval: ScreenApproval = new ScreenApproval();
  cityAccount: CityAccount = new CityAccount();
  counter: Counter = new Counter();
  user: User = new User();
  taxSettingServiceOrderTax: Array<ServiceOrderTax> = new Array<ServiceOrderTax>();
  taxSettingTaxSettingAttachment: Array<TaxSettingAttachment> = new Array<TaxSettingAttachment>();
  taxSettingsTaxSettingsCategory: Array<TaxSettingsCategory> = new Array<TaxSettingsCategory>();
  taxSettingsTaxFormula: Array<TaxFormula> = new Array<TaxFormula>();
  taxSettingsTaxSettingsCounter: Array<TaxSettingsCounter> = new Array<TaxSettingsCounter>();
  taxSettingsFiscalModule: Array<FiscalModule> = new Array<FiscalModule>();
  taxSettingsTaxSettingsApproval: Array<TaxSettingsApproval> = new Array<TaxSettingsApproval>();
}