class Patient

@@patients = []
attr_accessor :name

  def initialize(name)
    @name = name
    @@patients << self
  end

  def self.all
    @@patients
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |ele|
      ele.patient == self
    end
  end

  def doctors
    self.appointments.map do |ele|
        ele.doctor
    end
  end

end
