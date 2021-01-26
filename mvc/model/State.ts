import { IdentificationDocument} from "./IdentificationDocument";
import { Country} from "./Country";
import { City} from "./City";
import { DepartmentOfFinance} from "./DepartmentOfFinance";

export class State {
  pkState: number;
  name: string;
  abbreviation: string;
  status: number = 0;
  country: Country = new Country();
  stateIdentificationDocumentList: Array<IdentificationDocument> = new Array<IdentificationDocument>();
  stateCityList: Array<City> = new Array<City>();
  stateDepartmentOfFinanceList: Array<DepartmentOfFinance> = new Array<DepartmentOfFinance>();
}