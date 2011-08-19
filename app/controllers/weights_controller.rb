class WeightsController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @weight = @person.weights.create(params[:weight])
    respond_to do |format|
      format.json { render :json => @weight }
    end
  end
  
  def index
    @weight = Weight.all
    respond_to do |format|
      format.xml  { render :xml => @weight }
      format.json { render :json => @weight }
    end
  end
  
  def destroy
    @person = Person.find(params[:person_id])
    @weight = @person.weights.find(params[:id])
    @weight.destroy();
    respond_to do |format|
      format.json { render :json => @person.weights }
    end
  end
  
end
