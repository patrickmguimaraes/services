import { Service} from "./Service";
import { Appointment} from "./Appointment";

export class ServiceAppointment {
  pkServiceAppointment: number;
  beginning: Date = new Date(new Date().setHours(12, 0, 0, 0));
  end: Date = new Date(new Date().setHours(12, 0, 0, 0));
  status: number = 0;
  service: Service = new Service();
  appointment: Appointment = new Appointment();
}