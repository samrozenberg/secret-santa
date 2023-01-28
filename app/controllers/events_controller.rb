class EventsController < ApplicationController
  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.valid?
      @event.save
      @all_participants = @event.participants - @event.participants.where(name: '')
      @participants = @all_participants.shuffle

      pairs = []
      @participants.each_with_index do |giver, index|
        receiver = @participants[index + 1] || @participants.first
        pairs << [giver, receiver]
      end

      pairs.each do |pair|
        created_pair = Pair.create(event: @event)
        pair.each_with_index do |participant, index|
          if index == 0
            @giver_pair = ParticipantPair.create(participant: participant, pair: created_pair, giver: true)
          else
            @receiver_pair = ParticipantPair.create(participant: participant, pair: created_pair, giver: false)
          end
        end

        @giver = @giver_pair.participant
        @receiver = @receiver_pair.participant

        # EventMailer.gift_assignment_email(@event, @giver, @receiver).deliver_now
      end

      redirect_to event_path(@event)
    else
      flash[:error] = 'Validation failed'
      redirect_to root_path
    end

  end

  def index
    @events = Event.where(user: current_user).reverse
  end

  def show
    @event = Event.find(params[:id])
    @participants = @event.participants - @event.participants.where(name: '')
  end

  private

  def event_params
    params.require(:event).permit(:title, :max_amount, participants_attributes: [:id, :name, :email])
  end
end
