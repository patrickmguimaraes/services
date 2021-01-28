import { Country} from "./Country";
import { TaxSettingsCategory} from "./TaxSettingsCategory";
import { LoanBankProgramProfileCategory} from "./LoanBankProgramProfileCategory";

export class Category {
  pkCategory: number;
  name: string;
  image: string;
  code: String;
  status: number = 0;
  category: Category = new Category();
  country: Country = new Country();
  categoryCategoryList: Array<Category> = new Array<Category>();
  categoryTaxSettingsCategoryList: Array<TaxSettingsCategory> = new Array<TaxSettingsCategory>();
  categoryLoanBankProgramProfileCategoryList: Array<LoanBankProgramProfileCategory> = new Array<LoanBankProgramProfileCategory>();
}