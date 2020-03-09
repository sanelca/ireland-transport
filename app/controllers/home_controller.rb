class HomeController < ApplicationController
    def index
        @title = "New Bookmark"
        @bookmark = Bookmark.new
    end
end