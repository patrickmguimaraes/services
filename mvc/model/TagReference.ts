import { FiscalModuleFunctionTag} from "./FiscalModuleFunctionTag";
import { Country} from "./Country";

export class TagReference {
  pkTagReference: number;
  code: string;
  name: string;
  status: number = 0;
  country: Country = new Country();
  tagReferenceFiscalModuleFunctionTagList: Array<FiscalModuleFunctionTag> = new Array<FiscalModuleFunctionTag>();
}