class InterviewersController < ApplicationController

    before_action :which_interviewer, only: [:show, :edit, :update, :destroy]

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
    end

    def destroy
    end


    private
    def which_interviewer
        @interviewer = Interviewer.find(params[:id])
    end

    def int_params(*args)
        params.require(:interviewer).permit(*args)
    end


end
