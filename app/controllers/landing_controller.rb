class LandingController < ApplicationController
  def landing
    @subscriber = Subscriber.new
  end


  def add_subscriber
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save

    else
      render :landing
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
