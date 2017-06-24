class GoalsController < ApplicationController

  def index
    @goals = Goal.all
    render :index
  end

  def new
    render :new
  end

  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      redirect_to goals_url
    else
      flash[:errors].errors.full_messages
      render :new
    end
  end

  def update
  end


def goal_params
  params.require(:goal).permit(:title, :body, :reached)
end
end
