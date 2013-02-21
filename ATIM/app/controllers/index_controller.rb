class IndexController < ApplicationController
  def index
  	
  	if( !params[:email])
  		flash[:notice] = "No ingreso un usuario valido"
  		redirect_to root_path
  	else
  		@teacher = Teacher.search(params[:email])
  		if(!@teacher)
  			flash[:notice] = "No ingreso un usuario valido"
  			redirect_to root_path
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
        @thesis.update_attribute(:state, "Activo")
        redirect_to index_path(:email=>params[:email])
      end
    end
  end
end
