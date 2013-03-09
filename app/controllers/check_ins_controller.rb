class CheckInsController < ApplicationController

  # def index
  #   @check_ins = CheckIn.all
  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @check_ins }
  #   end
  # end


  def create
    @user_id = session[:user_id]
    @event_id = params[:event_id]

    @check_in = CheckIn.new(:user_id => @user_id, :event_id => @event_id )
    # @check_in = CheckIn.find_by_event_id_and_user_id(@event_id, @user_id)

    respond_to do |format|
      if @check_in.save
        format.html { redirect_to event_path(@event_id), notice: 'Check in was successfully created.' }
        format.json { render json: event_path(@event_id), status: :created, location: @event_id }
      else
        format.html {redirect_to event_path(@event_id), notice: "Sorry, you've already checked in."}
        format.json { render json: @check_in.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @check_in = CheckIn.find(params[:id])
    @check_in.destroy

    respond_to do |format|
      format.html { redirect_to check_ins_url }
      format.json { head :no_content }
    end
  end
end
