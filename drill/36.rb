# 最初に、下記の手順でアプリケーションの雛形を作成してください。

# > cd ~/projects/ （フォルダ名は適宜読み替えてください）
# > rails new model-app -d mysql
# > cd model-app/
# > rails g scaffold product name:string price:integer
# > bundle exec rake db:create
# > bundle exec rake db:migrate

# このアプリケーションでは商品の名前と価格を登録することができます。
# 商品の新規作成が行われた場合、ユーザーが入力した価格に対して自動で消費税額8%を加算してからデータベースに保存しようと考えています。

# （問題）
# ①product.rbにメソッドadd_taxを追加してください。このメソッド内で、ユーザーの入力値に8%を加算してください。
# ②上記の条件メソッドを使用し、上の条件を満たすようコードを書き換えてください。

# product.rb
class Product < ApplicationRecord
  def add_tax
    self.price = (price * 1.08).round
  end
end

def create
  @product = Product.new(product_params)
  @product.add_tax

  respond_to do |format|
    if @product.save
      format.html { redirect_to @product, notice: 'Product was successfully created.' }
      format.json { render :show, status: :created, location: @product }
    else
      format.html { render :new }
      format.json { render json: @product.errors, status: :unprocessable_entity }
    end
  end
end
# （3行目を追加）

# ・モデルのファイル内にメソッドを記述することで、モデルクラスのインスタンスに対してメソッドを追加できる。
# この場合、product.rbにメソッドを書けば、Productクラスのインスタンスである@productに対して、
# @product.add_taxの様にメソッドを使うことができる。

# ・クラス内でセッターを使う場合（priceに値を代入する場合）は、selfを省略することができない。
# そのためself.price = という記述の仕方になる。ゲッターを使う場合（priceの値を参照する場合）はselfは省略可能のため、
# price * 1.08 という書き方ができる