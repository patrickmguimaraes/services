import { ServiceCategory} from "./ServiceCategory";
import { Category} from "./Category";
import { Country} from "./Country";
import { TaxSettingsCategory} from "./TaxSettingsCategory";
import { LoanBankProgramProfileCategory} from "./LoanBankProgramProfileCategory";

export class Category {
  pkCategory: number;
  name: string;
  code: String;
  status: number = 0;
  category: Category = new Category();
  country: Country = new Country();
  categoryServiceCategoryReferenced: ServiceCategory = new ServiceCategory();
  categoryCategory: Array<Category> = new Array<Category>();
  categoryTaxSettingsCategory: Array<TaxSettingsCategory> = new Array<TaxSettingsCategory>();
  categoryLoanBankProgramProfileCategory: Array<LoanBankProgramProfileCategory> = new Array<LoanBankProgramProfileCategory>();
}