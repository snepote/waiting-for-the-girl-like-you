class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  # GET /guests
  # GET /guests.json
  def index
    @guests = Guest.all
  end

  # GET /guests/1
  # GET /guests/1.json
  def show
  end

  # GET /guests/new
  def new
    @guest = Guest.new
  end

  # GET /guests/1/edit
  def edit
  end

  # POST /guests
  # POST /guests.json
  def create
    @guest = Guest.new(guest_params)
    @message = String.new
    respond_to do |format|
      if success = @guest.save
        message = @guest.attends ? 'We are happy that you can make it' :
                                   'We are sorry that you are not comming'
        format.html { redirect_to @guest, notice: @message }
      else
        format.html { render :new }
      end
      js_response format, success, message
    end
  end

  # PATCH/PUT /guests/1
  # PATCH/PUT /guests/1.json
  def update
    @message = String.new
    respond_to do |format|
      if success = @guest.update(guest_params)
        message = 'Guest was successfully updated.'
        format.html { redirect_to @guest, notice: message }
        message = @guest.attends ? 'We are happy that you can make it' :
                                   'We are sorry that you are not comming'
      else
        format.html { render :edit }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
      js_response format, success, message
    end
  end

  # DELETE /guests/1
  # DELETE /guests/1.json
  def destroy
    @guest.destroy
    respond_to do |format|
      format.html { redirect_to guests_url, notice: 'Guest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest
      @guest = Guest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_params
      params.require(:guest).permit(:name_person_one, :name_person_two, :kids, :attends)
    end

    def js_response(format, success, message = nil)
      format.js {
       render json: {
         success: success, error: @guest.errors, message: message,
         content: ( render_to_string partial: 'rsvp_form', layout: false )
       }
      }
    end
end
