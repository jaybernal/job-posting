class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path, notice: "successful"
    else
      flash.now[:alert] = "Couldn't create"
      render new_job_path
    end
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(job_params)
      redirect_to job_path
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    flash[:success] = "Job Post deleted"

    redirect_to jobs_path, notice: "successful"
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
