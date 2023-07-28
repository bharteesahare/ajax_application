class CustomersController < ApplicationController
  # respond_to :html, :json
  # def show
  #   respond_to do |format|
  #     format.js {render layout: false} # Add this line to you respond_to block
  #   end
  # end

  def index
    @users = User.all
  end

  def show
    respond_to do |format|
      format.html { redirect_to @users, notice: "Manager was successfully destroyed." }
      format.json { head :no_content }
    end
  end
end
