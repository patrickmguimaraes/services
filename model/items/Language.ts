import { Country} from "./Country";
import { HelpCenterTypicalAsks} from "./HelpCenterTypicalAsks";

export class Language {
  pkLanguage: number;
  name: string;
  status: number = 0;
  country: Country = new Country();
  languageCountry: Array<Country> = new Array<Country>();
  languageHelpCenterTypicalAsks: Array<HelpCenterTypicalAsks> = new Array<HelpCenterTypicalAsks>();
}