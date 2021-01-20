export class Appointment{
  constructor(fields: any) {
    for (const f in fields) {
      this[f] = fields[f];
    }
  }
}

export interface Appointment {
  pkAppointment: number;
  number: string;
  cost: string;
  discount: string;
  date: string;
  status: number;
  fkUser: number;
}