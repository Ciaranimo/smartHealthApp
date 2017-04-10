# the concrete component we would like to decorate, a patient in our example
class BasicPatient
    def initialize(c, i, injury)
        @cost = c
        @infection = i
        @injury = injury
        @observation = "basic patient"
    end

    # getter method
    def cost
        return @cost
    end

    # a method which returns a string representation of the object of type BasicPatient
    def details
        return @observation + "; " + @infection + "; " + @injury + ": " + "#{@cost}"
    end


    # getter method
    def injury
        return @injury
    end

    # getter method
    def infection
        return @infection
    end

end # ends the BasicPatient class



# decorator class -- this serves as the superclass for all the concrete decorators
# the base/super class decorator (i.e. no actual decoration yet), each concrete decorator (i.e. subclass) will add its own decoration
class PatientDecorator < BasicPatient
    def initialize(basic_patient)
        #basic_patient is a real patient, i.e. the component we want to decorate
        @basic_patient = basic_patient
        super(@basic_patient.cost, @basic_patient.infection, @basic_patient.injury)
        @extra_cost = 0
        @observation = "no extra feature"
    end

    # override the cost method to include the cost of the extra feature
    def cost
        return @extra_cost + @basic_patient.cost
    end

    # override the details method to include the observation of the extra feature
    def details
        return  @observation + ": " + "#{@extra_cost}" + ". " + @basic_patient.details
    end

end # ends the PatientDecorator class


# a concrete decorator --  define an extra feature
class BloodDecorator < PatientDecorator
    def initialize(basic_patient)
        super(basic_patient)
        @extra_cost = 200
        @observation = "Blood tests"
    end

end # ends the  class


# another concrete decorator -- define an extra feature
class PhysioDecorator < PatientDecorator
    def initialize(basic_patient)
        super(basic_patient)
        @extra_cost = 500
        @observation = "Physio"
    end

end # ends the  class


# another concrete decorator -- define an extra feature
class PainMedicationDecorator < PatientDecorator
    def initialize(basic_patient)
        super(basic_patient)
        @extra_cost = 800
        @observation = "pain medication"
    end
  end # ends the  class
