class BasicSkillsController < ApplicationController
  before_filter :set_basic_skill, only: [:edit, :update, :destroy]

  def index
    @basic_skills = Skill::Basic.order(name: :asc)
  end

  def new
    @basic_skill = Skill::Basic.new
  end

  def create
    @basic_skill = Skill::Basic.new(basic_skill_params)

    if @basic_skill.save
      redirect_to skills_path, notice: 'Basic Skill was successfully created.'
    else
      flash[:error] = @basic_skill.errors.full_messages.join("<br />")
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @basic_skill.update_attributes(basic_skill_params)
      redirect_to skills_path, notice: 'Basic Skill was successfully updated.'
    else
      flash[:error] = @basic_skill.errors.full_messages.join("<br />")
      render action: 'edit'
    end
  end

  def destroy
  end

  private

  def basic_skill_params
    params.require(:skill_basic).permit(:name, :characteristic, :descriptor, :description, :use, :special_uses)
  end

  def set_basic_skill
    @basic_skill = Skill::Basic.find(params[:id])
  end
end
