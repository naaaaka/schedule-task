class PostsController < ApplicationController
    def top
        require "date"
        @time = Time.now.strftime('%Y年%m月%d日')
        @schedules = Schedule.all
    end
    
    def new
        @time = Time.now.strftime('%Y年%m月%d日')
        @schedule = Schedule.new()
    end
    
    def detail
        @time = Time.now.strftime('%Y年%m月%d日')
        @schedule = Schedule.find_by(id: params[:id])
    end
    
    def edit
        @time = Time.now.strftime('%Y年%m月%d日')
        @schedule = Schedule.find_by(id: params[:id])
    end
    
    def update
        @time = Time.now.strftime('%Y年%m月%d日')
        @schedule = Schedule.find_by(id: params[:id])
        @schedule.title = params[:title]
        @schedule.start = params[:start]
        @schedule.end = params[:end]
        @schedule.day = params[:day]
        @schedule.memo = params[:memo]
        if @schedule.save
            flash[:notice] = "スケジュールを編集しました"
            redirect_to("/")
        else
            flash[:notice] = "スケジュール編集に失敗しました"
            render("posts/edit")
        end
    end
    
    def create
        @time = Time.now.strftime('%Y年%m月%d日')
        @schedule = Schedule.new(title:params[:title], start:params[:start], end:params[:end], day:params[:day], memo:params[:memo])
        if @schedule.save
            flash[:notice] = "スケジュールを登録しました"
            redirect_to("/")
        else
            flash[:notice] = "スケジュールを登録できませんでした"
            render("posts/new")
        end
    end
    
    def delete
        @schedule = Schedule.find_by(id: params[:id])
        @schedule.destroy
        flash[:notice] = "スケジュールを削除しました"
        redirect_to("/")
    end
end