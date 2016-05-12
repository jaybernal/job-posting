class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path, notice: "successful"
    else
      render new_job_path
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    @job = Job.find(params[:id])
  end

  def index
    @jobs = Job.all
  end

  private
  
  def job_params
    params.require(:job).permit(:title, :company_id, :job_type, :pay, :exerience, :languages, :apply)
  end

end
