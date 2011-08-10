class CheckInsController < ApplicationController
  before_filter :set_checkin, :only => [:show, :edit, :update, :destroy]
  def index
    @check_in = CheckIn.all
  end

  def show
    @check_in = CheckIn.find(params[:id])
   end

 
  def new
    @check_in = CheckIn.new
  end
 
  def edit
    @check_in = CheckIn.find(params[:id])
  end
 
  def create
    @check_in = CheckIn.new(params[:check_in])
    if @check_in.save
        redirect_to(@check_in, :notice => 'Checkin was successfully created.') 
      else
        render :action => "new"  
      end
  end

  def update
    @check_in = CheckIn.find(params[:id])

      if @check_in.update_attributes(params[:check_in])
        redirect_to(@check_in, :notice => 'Checkin was successfully updated.') 
        
      else
         render :action => "edit"  
      end 
  end


  def destroy
    @check_in = CheckIn.find(params[:id])
    @check_in.destroy
    redirect_to(@check_in, :notice => 'Checada borrada') 
  end
    def set_checkin
    @check_in = CheckIn.find(params[:id])
  end
  

end
