class CommitmentsController < ApplicationController

  def show
  end

  def search
    @thesis_id = params[:id]
    @thesis = Thesis.find( @thesis_id)
    @teacher =  Teacher.find(@thesis.teacher_id)
    query = 'thesis_id = ' << @thesis_id
    comm_type = params[:comm_type]
    if comm_type == 'open' then
       query  = query << " and done = false"
    else if comm_type == 'closed' then
            query = query << " and done = true"
         end
    end
    @commitments =  Commitment.where( query).sort_by( &:due_date)
  end

  def create
  end

  def edit
  end

  def close
    @commitment = Commitment.find( params[:id]) # look up a commitment by unique ID
    @commitment.update_attributes( :done => true)
    @thesis_id = @commitment.thesis_id
    redirect_to commitment_path( @commitment.thesis_id)
  end
end
