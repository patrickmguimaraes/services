import { TaxSettings} from "./TaxSettings";
import { Attachment} from "./Attachment";

export class TaxSettingAttachment {
  pkTaxSettingAttachment: number;
  name: string;
  status: number = 0;
  taxSetting: TaxSettings = new TaxSettings();
  attachment: Attachment = new Attachment();
}