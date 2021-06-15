class PostsController < ApplicationController
    def top
        require "date"
        @time = Time.now.strftime('%Y年%m月%d日')
        @schedules = Schedule.all
    end
    
    def new
        @time = Time.now.strftime('%Y年%m月%d日')
    end
    
    def detail
        @time = Time.now.strftime('%Y年%m月%d日')
        @schedule = Schedule.find_by(id: params[:id])
    end
    
    def edit
        @time = Time.now.strftime('%Y年%m月%d日')
        @schedule = Schedule.find_by(id: params[:id])
    end
    
    def create
        @schedule = Schedule.new(title:params[:title], start:params[:start], end:params[:end], day:[:day], memo:params[:memo])
        @schedule.save
        redirect_to("/")
    end
    
    def delete
        @schedule = Schedule.find_by(id: params[:id])
        @schedule.destroy
        redirect_to("/")
    end
end