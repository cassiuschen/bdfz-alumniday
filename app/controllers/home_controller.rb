class HomeController < ApplicationController
  def index
  end

  def message
    @m = Message.new(message_params)
    if @m.save
      respond_to do |f|
        f.json {render json: {status: 200}}
      end
    end
  end

  def add_teacher
    @m = Message.new
    @m.owner = teacher_params[:owner][:name]
    @m.content = "我是 #{teacher_params[:owner][:year]} 届毕业生 #{@m.owner}, 我希望 #{teacher_params[:type]}老师 #{teacher_params[:name]} 可以为我们上一堂 #{teacher_params[:course]},谢谢！"
    if @m.save
      respond_to do |f|
        f.json {render json: {status: 200}}
      end
    end
  end

  def vote
    @c = Course.find course_params[:id]
    @c.vote += 1
    session["vote_for_#{course_params[:id]}".to_sym] = true
    if @c.save
      respond_to do |f|
        f.json {render json: {status: 200}}
      end
    end
  end

  private
  def message_params
    params.require(:message).permit(:owner, :email, :content)
  end

  def teacher_params
    if params[:type] == "addTeacher"
      params[:teacher]
    else
      raise WrongParamsError
    end
  end

  def course_params
    if params[:type] == "voteCourse"
      params[:course]
    else
      raise WrongParamsError
    end
  end
end
