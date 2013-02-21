class ThesesController < ApplicationController
  # GET /theses
  # GET /theses.json
  def index
    @theses = Thesis.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @theses }
    end
  end

  # GET /theses/1
  # GET /theses/1.json
  def show
    if(!params[:id2])
      flash[:notice] = "No ha iniciado sesion"
      redirect_to root_path
    end
    @teacher = Teacher.find(params[:id2])
    if(!@teacher)
      flash[:notice] = "No ha iniciado sesion"
      redirect_to root_path
    end
    @thesis = Thesis.find(params[:id])
    if(@teacher.id!=@thesis.id)
      flash[:notice] = "Error de autentificacion"
      redirect_to root_path
    end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thesis }
    end
  end

  # GET /theses/new
  # GET /theses/new.json
  def new
    @thesis = Thesis.new
     if(!params[:id])
      flash[:notice] = "No ha iniciado sesion"
      redirect_to root_path
    end
    @teacher = Teacher.find(params[:id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thesis }
    end
  end

  # GET /theses/1/edit
  def edit
    @thesis = Thesis.find(params[:id])
  end

  # POST /theses
  # POST /theses.json
  def create

    if(!params[:id])
      flash[:notice] = "No ha iniciado sesion"
      redirect_to root_path
    end
    @teacher = Teacher.find(params[:id])
    @thesis = Thesis.new(params[:thesis])
    @thesis.update_attribute(:teacher_id, @teacher.id)
    


    respond_to do |format|
      if @thesis.save
        format.html { redirect_to @thesis, notice: 'Thesis was successfully created.' }
        format.json { render json: @thesis, status: :created, location: @thesis }
      else
        format.html { render action: "new" }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /theses/1
  # PUT /theses/1.json
  def update
    @thesis = Thesis.find(params[:id])

    respond_to do |format|
      if @thesis.update_attributes(params[:thesis])
        format.html { redirect_to @thesis, notice: 'Thesis was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theses/1
  # DELETE /theses/1.json
  def destroy
    @thesis = Thesis.find(params[:id])
    @thesis.destroy

    respond_to do |format|
      format.html { redirect_to theses_url }
      format.json { head :no_content }
    end
  end
end
