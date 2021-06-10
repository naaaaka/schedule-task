class PostsController < ApplicationController
    def top
        require "date"
        @time = Time.now.strftime('%Y年%m月%d日')
    end
end