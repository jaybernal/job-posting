class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to company_path(@company), notice: "successful"
    else
      flash.now[:alert] = "Not Saved"
      render :new
    end
  end

  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(company_params)
      redirect_to company_path, notice: "successful"
    else
      render :edit
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    flash[:success] = "Company deleted"

    redirect_to companies_path, notice: "successful"
  end

  def show
    @company = Company.find(params[:id])
  end

  def index
    @companies = Company.all
  end


  private
    def company_params
      params.require(:company).permit(:name, :image, :benefit, :location, :website, :about_us)     
    end

end

