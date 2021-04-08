class DoctorsController < ApplicationController
    before_action :set_doctor, only: [:show]
  
    def index
      @doctors = Doctor.all
    end
  
    def show
        @doctor = Doctor.find_by(id: params[:id])
        @appointments = @doctor.appointments 
    end
  
    private
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end
    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end
  end