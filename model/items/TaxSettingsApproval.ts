import { TaxSettings} from "./TaxSettings";
import { Approval} from "./Approval";

export class TaxSettingsApproval {
  pkTaxSettingsApproval: number;
  status: number = 0;
  taxSettings: TaxSettings = new TaxSettings();
  approval: Approval = new Approval();
}