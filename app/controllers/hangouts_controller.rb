class HangoutsController < ApplicationController
  def new  
  end

  def create
    @hangout = Hangout.new(params[:hangout])
    if @hangout.save
      redirect_to @hangout
    else
      render 'new'
    end
  end

  def show
    @hangout = Hangout.find(params[:id])
  end

  def index
    @hangouts = Hangout.all
  end

  def edit
    @hangout = Hangout.find(params[:id])
  end

  def update
    @hangout = Hangout.find(params[:id])
    
    respond_to do |format|
      if @hangout.update_attributes(params[:hangout])
        format.html { redirect_to(@hangout, :notice => "Hangout was successfully updated") }
      	format.json { head :no_content }
      else
        format.html { render :action=> "edit" }
        format.json { render :json => @hangout.errors,
      		    :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @hangout = Hangout.find(params[:id])
    @hangout.destroy
    redirect_to hangouts_path
  end

  private
    def post_params
      params.require(:hangout).permit(:title, :text)
    end
end
