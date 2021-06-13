class PostsController < ApplicationController
    def top
        require "date"
        @time = Time.now.strftime('%Y年%m月%d日')
        @schedules = Schedule.all
    end
    
    def new
    end
    
    def detail
        @schedule = Schedule.find_by(id: params[:id])
    end
    
    def edit
        @schedule = Schedule.find_by(id: params[:id])
    end
end