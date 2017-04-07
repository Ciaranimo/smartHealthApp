class RequestsController < ApplicationController
  # GET /patients/1/requests
def index
# For URL like /patients/1/requests
# Get the patient with id=1
@patient = Patient.find(params[:patient_id])
# Access all requests for that patient
@requests = @patient.requests
end

# GET /patients/1/requests/2
def show
@patient = Patient.find(params[:patient_id])
# For URL like /patients/1/requests/2
# Find an request in patients 1 that has id=2
@request = @patient.requests.find(params[:id])
end
# GET /patients/1/requests/new
def new
@patient = Patient.find(params[:patient_id])
# Associate an request object with patient 1
@request = @patient.requests.build
end
# POST /patients/1/requests
def create
@patient = Patient.find(params[:patient_id])
# For URL like /patients/1/requests
# Populate an request associate with patient 1 with form data
# Patient will be associated with the request
# @request = @patient.requests.build(params.require(:request).permit!)
@request = @patient.requests.build(params.require(:request).permit(:details, :date))
if @request.save
# Save the request successfully
redirect_to patient_request_url(@patient, @request)
else
render :action => "new"
end
end

# GET /patients/1/requests/2/edit
def edit
@patient = Patient.find(params[:patient_id])
# For URL like /patients/1/requests/2/edit
# Get request id=2 for patient 1
@request = @patient.requests.find(params[:id])
end
# PUT /patients/1/requests/2
def update
@patient = Patient.find(params[:patient_id])
@request = Request.find(params[:id])
if @request.update_attributes(params.require(:request).permit(:details, :date))
# Save the request successfully
redirect_to patient_request_url(@patient, @request)
else
render :action => "edit"
end
end

# DELETE /patients/1/requests/2
def destroy
@patient = Patient.find(params[:patient_id])
@request = Request.find(params[:id])
@request.destroy
respond_to do |format|
format.html { redirect_to patient_requests_path(@patient) }
format.xml { head :ok }
end
end
end
