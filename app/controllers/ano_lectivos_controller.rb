class AnoLectivosController < ApplicationController
  
  before_filter :correct_user

  def index
    @ano_lectivos = AnoLectivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ano_lectivos }
    end
  end

  # GET /ano_lectivos/1
  # GET /ano_lectivos/1.json
  def show
    @ano_lectivo = AnoLectivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ano_lectivo }
    end
  end

  # GET /ano_lectivos/new
  # GET /ano_lectivos/new.json
  def new
    @ano_lectivo = AnoLectivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ano_lectivo }
    end
  end

  # GET /ano_lectivos/1/edit
  def edit
    @ano_lectivo = AnoLectivo.find(params[:id])
  end

  # POST /ano_lectivos
  # POST /ano_lectivos.json
  def create
    @ano_lectivo = AnoLectivo.new(params[:ano_lectivo])

    respond_to do |format|
      if @ano_lectivo.save
        format.html { redirect_to @ano_lectivo, notice: 'Ano lectivo was successfully created.' }
        format.json { render json: @ano_lectivo, status: :created, location: @ano_lectivo }
      else
        format.html { render action: "new" }
        format.json { render json: @ano_lectivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ano_lectivos/1
  # PUT /ano_lectivos/1.json
  def update
    @ano_lectivo = AnoLectivo.find(params[:id])

    respond_to do |format|
      if @ano_lectivo.update_attributes(params[:ano_lectivo])
        format.html { redirect_to @ano_lectivo, notice: 'Ano lectivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ano_lectivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ano_lectivos/1
  # DELETE /ano_lectivos/1.json
  def destroy
    @ano_lectivo = AnoLectivo.find(params[:id])
    @ano_lectivo.destroy

    respond_to do |format|
      format.html { redirect_to ano_lectivos_url }
      format.json { head :no_content }
    end
  end

  private
  def correct_user
    redirect_to(root_path) unless current_user
  end
end
