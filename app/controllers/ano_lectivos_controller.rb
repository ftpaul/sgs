class AnoLectivosController < ApplicationController
  
  before_filter :correct_user

  def index
    @ano_lectivos = AnoLectivo.last

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ano_lectivos }
    end
  end

  def new
    @ano_lectivo = AnoLectivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ano_lectivo }
    end
  end

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

  private
  def correct_user
    redirect_to("/login") unless current_user
  end
end
