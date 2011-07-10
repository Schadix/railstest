class WeightsController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @weight = @person.weights.create(params[:weight])
    redirect_to person_path(@person)
  end
end
