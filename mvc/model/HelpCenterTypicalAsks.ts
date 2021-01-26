import { Language} from "./Language";

export class HelpCenterTypicalAsks {
  pkHelpCenterTypicalAsks: number;
  number: Number;
  ask: string;
  answer: string;
  helpCenterTypicalAsks: HelpCenterTypicalAsks = new HelpCenterTypicalAsks();
  language: Language = new Language();
  helpCenterTypicalAsksHelpCenterTypicalAsksList: Array<HelpCenterTypicalAsks> = new Array<HelpCenterTypicalAsks>();
}