class CompaniesController < ApplicationController
  def new
    @company = Company.new
    user_access?
  end

  def create
    @company = Company.new(company_params)
    user_access?

    if @company.save
      redirect_to company_path(@company), notice: "successful"
    else
      flash.now[:alert] = "Not Saved"
      render :new
    end
  end

  def edit
    @company = Company.find(params[:id])
    user_access?

  end

  def update
    @company = Company.find(params[:id])
    user_access? 
    if @company.update_attributes(company_params)
      redirect_to company_path(@company), notice: "successful"
    else
      render :edit
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def index
    @companies = Company.all
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    user_access?

    flash[:success] = "Company deleted"

    redirect_to companies_path, notice: "successful"
  end

  private
    def company_params
      params.require(:company).permit(:name, :image, :benefit, :location, :website, :about_us)     
    end

end

