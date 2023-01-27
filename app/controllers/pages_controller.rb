class PagesController < ApplicationController

  def home
    @event = Event.new
    @event.participants.build
  end
end
