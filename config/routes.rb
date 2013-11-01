CrudApp::Application.routes.draw do
  resources :authors do 
    resources :books do
      resources :words
    end
  end

  root :to => 'authors#index' 
end

#     author_book_words GET    /authors/:author_id/books/:book_id/words(.:format)          words#index
#                       POST   /authors/:author_id/books/:book_id/words(.:format)          words#create
#  new_author_book_word GET    /authors/:author_id/books/:book_id/words/new(.:format)      words#new
# edit_author_book_word GET    /authors/:author_id/books/:book_id/words/:id/edit(.:format) words#edit
#      author_book_word GET    /authors/:author_id/books/:book_id/words/:id(.:format)      words#show
#                       PUT    /authors/:author_id/books/:book_id/words/:id(.:format)      words#update
#                       DELETE /authors/:author_id/books/:book_id/words/:id(.:format)      words#destroy
#          author_books GET    /authors/:author_id/books(.:format)                         books#index
#                       POST   /authors/:author_id/books(.:format)                         books#create
#       new_author_book GET    /authors/:author_id/books/new(.:format)                     books#new
#      edit_author_book GET    /authors/:author_id/books/:id/edit(.:format)                books#edit
#           author_book GET    /authors/:author_id/books/:id(.:format)                     books#show
#                       PUT    /authors/:author_id/books/:id(.:format)                     books#update
#                       DELETE /authors/:author_id/books/:id(.:format)                     books#destroy
#               authors GET    /authors(.:format)                                          authors#index
#                       POST   /authors(.:format)                                          authors#create
#            new_author GET    /authors/new(.:format)                                      authors#new
#           edit_author GET    /authors/:id/edit(.:format)                                 authors#edit
#                author GET    /authors/:id(.:format)                                      authors#show
#                       PUT    /authors/:id(.:format)                                      authors#update
#                       DELETE /authors/:id(.:format)                                      authors#destroy
#                  root        /                                                           authors#index
