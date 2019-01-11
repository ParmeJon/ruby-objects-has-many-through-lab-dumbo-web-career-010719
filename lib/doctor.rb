class Doctor

  @@doctors = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@doctors << self
  end

  def self.all
    @@doctors
  end

  def new_appointment(date, patient)
   Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |ele|
      ele.doctor == self
    end

  end

  def patients
    self.appointments.map do |ele|
        ele.patient
    end
  end


end
