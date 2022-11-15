class WishListController < ApplicationController
    def card
    end

    def new_wish
    end

    def card_list
        #準備寫進資料庫
       clean_params = params.require(:w).permit(:title, :description)
        w = WishList.new(clean_params)
        if w.save
            render html: "ok"
        else
            render html: "fails" 
        end
       
    end
end
