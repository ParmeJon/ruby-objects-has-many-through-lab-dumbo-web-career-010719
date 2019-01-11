class Appointment

attr_accessor :doctor, :date, :patient

@@appointments = []

  def initialize(patient, date, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@appointments << self
  end

  def self.all
    @@appointments
  end
end
