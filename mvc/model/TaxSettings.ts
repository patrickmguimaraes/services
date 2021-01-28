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
  filedDate: Date = new Date();
  approvatedDate: Date = new Date();
  expiredDate: Date = new Date();
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
  taxSettingServiceOrderTaxList: Array<ServiceOrderTax> = new Array<ServiceOrderTax>();
  taxSettingTaxSettingAttachmentList: Array<TaxSettingAttachment> = new Array<TaxSettingAttachment>();
  taxSettingsTaxSettingsCategoryList: Array<TaxSettingsCategory> = new Array<TaxSettingsCategory>();
  taxSettingsTaxFormulaList: Array<TaxFormula> = new Array<TaxFormula>();
  taxSettingsTaxSettingsCounterList: Array<TaxSettingsCounter> = new Array<TaxSettingsCounter>();
  taxSettingsFiscalModuleList: Array<FiscalModule> = new Array<FiscalModule>();
  taxSettingsTaxSettingsApprovalList: Array<TaxSettingsApproval> = new Array<TaxSettingsApproval>();
}