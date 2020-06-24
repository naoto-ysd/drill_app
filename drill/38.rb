# routes.rbでは、resourcesを使ってルーティングを定義することをお伝えしてきました。
# ところで、resourcesの代わりにresourceを使ってルーティングを定義することもできます。
# resourceを利用した際に生成されるルーティングについて、resourcesを用いた場合との主な違いを2点、説明してください。

# 模範回答
# 次の２つの違いがある。
# ・idつきのパスが生成されない。show, editアクションの実行に、idが必要ない場合に有効。
# ・indexアクション用のルーティングが生成されない。

# routes.ebに以下のように書くと、
# resource :users

# 生成されるルーティングはこうなる
new_users GET    /users/new(.:format)  users#new
edit_users GET    /users/edit(.:format) users#edit
     users GET    /users(.:format)      users#show
           PATCH  /users(.:format)      users#update
           PUT    /users(.:format)      users#update
           DELETE /users(.:format)      users#destroy
           POST   /users(.:format)      users#create