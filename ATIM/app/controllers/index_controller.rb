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
  		else
  			flash[:notice] = ""+@teacher.email+" "+@teacher.theses.to_s
  		end
  	end

  end
end
