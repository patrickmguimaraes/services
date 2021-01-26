import { TagReference} from "./TagReference";

export class FiscalModuleFunctionTag {
  pkFiscalModuleFunctionTag: number;
  sequence: number = 1;
  tag: String;
  value: String;
  length: Number;
  completeWithZeroRight: boolean = false;
  completeWithZeroLeft: boolean = false;
  status: number = 0;
  tagReference: TagReference = new TagReference();
  fiscalModuleFunctionTag: FiscalModuleFunctionTag = new FiscalModuleFunctionTag();
  fiscalModuleFunctionTagFiscalModuleFunctionTagList: Array<FiscalModuleFunctionTag> = new Array<FiscalModuleFunctionTag>();
}