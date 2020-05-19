class InterviewersController < ApplicationController

    before_action :which_interviewer, only: [:show, :edit, :update, :destroy, :schedule, :create_meeting]

    def index
        @interviewers = Interviewer.all
    end

    def show
    end

    def new
        @interviewer = Interviewer.new
    end

    def create
        intv = Interviewer.create(int_params(:name, :department, :cheer))
        redirect_to interviewer_path(intv)
    end

    def edit
    end

    def update
        @interviewer.update(int_params(:name, :department, :cheer))
        redirect_to interviewer_path(@interviewer)
    end

    def destroy
        @interviewer.destroy
        redirect_to interviewers_path
    end

    def schedule
        @meeting = Meeting.new
    end

    def create_meeting
       meeting_date = DateTime.new(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
       Meeting.create(applicant_id: params[:meeting][:applicant], interviewer_id: params[:interviewer_id], date: meeting_date)
       redirect_to interviewer_path(@interviewer)
    end

    private
    def which_interviewer
        @interviewer = Interviewer.find(params[:id])
    end

    def int_params(*args)
        params.require(:interviewer).permit(*args)
    end


end
