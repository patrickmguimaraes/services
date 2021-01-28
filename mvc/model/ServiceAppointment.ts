import { Service} from "./Service";
import { Appointment} from "./Appointment";

export class ServiceAppointment {
  pkServiceAppointment: number;
  beginning: Date = new Date();
  end: Date = new Date();
  status: number = 0;
  service: Service = new Service();
  appointment: Appointment = new Appointment();
}