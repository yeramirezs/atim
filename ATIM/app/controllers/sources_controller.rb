class SourcesController < ApplicationController

  def search
    @thesis_id = params[:id]
    @thesis    = Thesis.find( @thesis_id)
    @teacher   = Teacher.find(@thesis.teacher_id)
    @sources   = Source.where( 'thesis_id = ' << @thesis_id).sort_by( &:title)
  end
end
