class EventsController < ApplicationController

    def index
        @events = Event.all
    end

    def create
        @event = Event.create(event_params)

        return redirect_to events_path if @event.valid?

        flash[:errors] = @event.errors.full_messages

        return redirect_back fallback_location: events_path
    end



    private
    def event_params
        params.require(:event).permit(:name, :date, :city, :state).merge(user:current_user)
    end
end
