class CursosController < ApplicationController
  
  before_filter :correct_user

  def index
    @cursos = Curso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cursos }
    end
  end

  def new
    @curso = Curso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @curso }
    end
  end

  def create
    @curso = Curso.new(params[:curso])

    respond_to do |format|
      if @curso.save
        format.html { redirect_to cursos_path, notice: 'Curso was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def destroy
    @curso = Curso.find(params[:id])
    @curso.destroy

    respond_to do |format|
      format.html { redirect_to cursos_url }
      format.json { head :no_content }
    end
  end

  private
  def correct_user
    redirect_to("/login") unless current_user
  end
end
