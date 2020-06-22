# 下記の手順でアプリケーションの雛形を作成してください。

# > cd ~/projects/ （フォルダ名は適宜読み替えてください）
# > rails new view-app -d mysql
# > cd view-app/
# > rails g scaffold product name:string price:integer
# > bundle exec rake db:create
# > bundle exec rake db:migrate

# このアプリケーションでは商品の名前と価格を登録することができます。
# 例えば価格に1000にして登録すると、一覧画面で見たときに
# 単に「1000」と表示されます。

# （問題）
# ①ヘルパーメソッドconverting_to_jpyを作成してください。
# 例えば「1000」という数値が引数で与えらたら「1,000円」といったように、「桁区切り」と「円」を追加するコードを実装してください。
# ②index画面で表示する金額に対して①で作成したメソッドを使用してください。

# 模範回答
# app/helpers/product_helper.rb
module ProductsHelper
  def converting_to_jpy(price)
    "#{price.to_s(:delimited, delimiter: ',')}円"
  end
end

<p id="notice"><%= notice %></p>

<h1>Products</h1>

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Price</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @products.each do |product| %>
      <tr>
        <td><%= product.name %></td>
        <td><%= converting_to_jpy(product.price) %></td>
        <td><%= link_to 'Show', product %></td>
        <td><%= link_to 'Edit', edit_product_path(product) %></td>
        <td><%= link_to 'Destroy', product, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to 'New Product', new_product_path %>
# （18行目を修正）
