class ApplicantsController < ApplicationController

    before_action :which_applicant, only: [:show, :edit, :update, :destroy]

    def index
        @applicants = Applicant.all
    end

    def show
    end

    def new
        @applicant = Applicant.new
    end

    def create
        appl = Applicant.create(app_params(:name, :cv, :graduation_year))
        redirect_to applicant_path(appl)
    end

    def edit
    end

    def update
    end

    def destroy
    end


    private
    def which_applicant
        @applicant = Applicant.find(params[:id])
    end

    def app_params(*args)
        params.require(:applicant).permit(*args)
    end


end
