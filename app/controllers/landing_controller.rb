class LandingController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  # def new
  #   @subscriber = Subscriber.new
  # end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      Swal.fire(
        'Good job!',
        'You clicked the button!',
        'success'
      )
    else
      render :index
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
