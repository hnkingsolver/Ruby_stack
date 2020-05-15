class SurveysController < ApplicationController

def new
end

def submit
    session[:user] = params

    flash[:name] = params[:name]
    flash[:location] = params[:location]
    flash[:language] = params[:language]
    flash[:comment] = params[:comment]

    if session[:count]
        session[:count] += 1
    else
        session[:count] = 1
    end

    flash[:count] = session[:count]

    redirect_to('/result')
end

def result
    @user = session[:user]

end

end
