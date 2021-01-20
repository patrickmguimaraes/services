export class ServiceAppointment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface ServiceAppointment {
  pkServiceAppointment: number;
  beginning: string | null;
  end: string | null;
  status: number;
  fkService: number;
  fkAppointment: number;
}