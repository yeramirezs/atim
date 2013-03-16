class SourcesController < ApplicationController

  def search
    @thesis_id = params[:id]
    @thesis    = Thesis.find( @thesis_id)
    @teacher   = Teacher.find(@thesis.teacher_id)
    @sources   = Source.where( 'thesis_id = ' << @thesis_id).sort_by( &:title)
  end

  def analysis
    @source    = Source.find( params[:id]) # look up a source by unique ID
    @thesis_id = @source.thesis_id
    @thesis    = Thesis.find ( @thesis_id)
    @teacher   = Teacher.find(@thesis.teacher_id)
    flash[:notice] = "#{@source.title} updated."

  end

  def update
    @source = Source.find params[:id]
    @source.analysis = params[:analysis]
    @source.save
    flash[:notice] = "#{@source.title} successfully updated."
    redirect_to :controller => 'sources', :action => 'analysis', :id => params[:id]

  end

end
