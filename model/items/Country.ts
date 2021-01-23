import { Person} from "./Person";
import { JuridicalPerson} from "./JuridicalPerson";
import { IdentificationDocument} from "./IdentificationDocument";
import { State} from "./State";
import { Language} from "./Language";
import { Category} from "./Category";
import { ScreenApproval} from "./ScreenApproval";
import { Bank} from "./Bank";
import { Currency} from "./Currency";
import { DigitalWallet} from "./DigitalWallet";
import { CreditCardBrand} from "./CreditCardBrand";
import { MainBankAccount} from "./MainBankAccount";
import { EmailController} from "./EmailController";
import { SMSController} from "./SMSController";
import { Log} from "./Log";
import { LogBackuped} from "./LogBackuped";
import { Tax} from "./Tax";
import { TagReference} from "./TagReference";

export class Country {
  pkCountry: number;
  name: string;
  abbreviation: string;
  status: number = 0;
  timeZone: Number;
  language: Language = new Language();
  birthCountryPerson: Array<Person> = new Array<Person>();
  originCountryJuridicalPerson: Array<JuridicalPerson> = new Array<JuridicalPerson>();
  countryIdentificationDocument: Array<IdentificationDocument> = new Array<IdentificationDocument>();
  countryState: Array<State> = new Array<State>();
  countryCategory: Array<Category> = new Array<Category>();
  countryScreenApproval: Array<ScreenApproval> = new Array<ScreenApproval>();
  countryBank: Array<Bank> = new Array<Bank>();
  countryCurrency: Array<Currency> = new Array<Currency>();
  countryLanguage: Array<Language> = new Array<Language>();
  countryDigitalWallet: Array<DigitalWallet> = new Array<DigitalWallet>();
  countryCreditCardBrand: Array<CreditCardBrand> = new Array<CreditCardBrand>();
  countryMainBankAccount: Array<MainBankAccount> = new Array<MainBankAccount>();
  countryEmailController: Array<EmailController> = new Array<EmailController>();
  countrySMSController: Array<SMSController> = new Array<SMSController>();
  countryLog: Array<Log> = new Array<Log>();
  countryLogBackuped: Array<LogBackuped> = new Array<LogBackuped>();
  countryTax: Array<Tax> = new Array<Tax>();
  countryTagReference: Array<TagReference> = new Array<TagReference>();
}