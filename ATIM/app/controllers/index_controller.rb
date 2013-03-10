class IndexController < ApplicationController
  def index
  	
  	if( !params[:email])
  		flash[:notice] = "No ingreso un usuario valido"
  		redirect_to root_path
  	else
  		@teacher = Teacher.search(params[:email])
      @student = Student.search(params[:email])
  		if(!@teacher)

  			if(!@student)
          flash[:notice] = "No ingreso un usuario valido"
          redirect_to root_path
        else
          redirect_to indexUsuario_path(:email=>params[:email])
        end 
  		end
      
  	end

  end

  def comenzarTesis
    if( !params[:email] || !params[:id])
      flash[:notice] = "No ingreso un usuario valido"
      redirect_to root_path
    else
      @thesis = Thesis.find(params[:id])
      if(!@thesis)
        flash[:notice] = "Tesis no valida"
        redirect_to root_path
      else
        if(@thesis.students.length==0)
          flash[:notice] = "No ha asignado estudiantes"
        else
          @thesis.update_attribute(:state, "Activo")
        end
          redirect_to index_path(:email=>params[:email])
      end
    end
  end

  def indexUsuario
    @student = Student.search(params[:email])
    @thesis = Thesis.find(@student.thesis_id)
  end

  def resourcesIndex
    @student = Student.search(params[:email])
    @thesis = Thesis.find(@student.thesis_id)
    @sources   = Source.where( @thesis_id).sort_by( &:title)
  end
end
