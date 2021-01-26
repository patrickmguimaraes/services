import { Country} from "./Country";
import { HelpCenterTypicalAsks} from "./HelpCenterTypicalAsks";

export class Language {
  pkLanguage: number;
  name: string;
  status: number = 0;
  country: Country = new Country();
  languageCountryList: Array<Country> = new Array<Country>();
  languageHelpCenterTypicalAsksList: Array<HelpCenterTypicalAsks> = new Array<HelpCenterTypicalAsks>();
}