class CommitmentsController < ApplicationController

  def show
  end

  def search
    @thesis_id = params[:id]
    @thesis = Thesis.find( @thesis_id)
    query = 'thesis_id = ' << @thesis_id
    @commitments =  Commitment.where( query).sort_by( &:due_date)
  end

  def create
  end

  def edit
  end

  def close
  end
end
