class IndexController < ApplicationController
  def index
  	
  	if( !params[:email])
  		flash[:notice] = "No ingreso un usuario valido"
  	else
  		@teacher = Teacher.search(params[:email])
  		if(!@teacher)
  			flash[:notice] = "No ingreso un usuario valido"
  		else
  			flash[:notice] = ""+@teacher.email
  		end
  	end

  end
end
