class SociosController < ApplicationController
  
  before_filter :correct_user

  def index
    @search = Socio.search(params[:q])
    @socios = @search.result
  end

  def show
    @socio = Socio.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @socio }
    end
  end

  def new
    @socio = Socio.new

    respond_to do |format|
      format.html 
      format.json { render json: @socio }
    end
  end

  def edit
    @socio = Socio.find(params[:id])
  end

  def create
    @socio = Socio.new(params[:socio])

    respond_to do |format|
      if @socio.save
        format.html { redirect_to @socio, notice: 'Socio was successfully created.' }
        format.json { render json: @socio, status: :created, location: @socio }
      else
        format.html { render action: "new" }
        format.json { render json: @socio.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @socio = Socio.find(params[:id])

    respond_to do |format|
      if @socio.update_attributes(params[:socio])
        format.html { redirect_to @socio, notice: 'Socio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @socio.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @socio = Socio.find(params[:id])
    @socio.destroy

    respond_to do |format|
      format.html { redirect_to socios_url }
      format.json { head :no_content }
    end
  end

  def import
    Socio.import(params[:file])
    redirect_to socios_path, notice: "Socios imported."
  end

  private
  def correct_user
    redirect_to("/login") unless current_user
  end
end
