import { Attachment} from "./Attachment";
import { Service} from "./Service";

export class ServiceImage {
  pkServiceImage: number;
  status: number = 0;
  attachment: Attachment = new Attachment();
  service: Service = new Service();
}