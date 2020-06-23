# Array 1
# プログラミング チャレンジの説明:
# いずれの値も負になる可能性がある3つの整数p、q、rがあります。 
# この３つの整数p、q、rが入力された時、pから始まり１ずつ増加（または減少）しながら
# p→q→rの全ての整数を格納できる 配列の長さを計算して標準出力に出力してください。

# You have three integers p, q, and r such that any of them can be negative. 
# Your task is to find the length of the smallest array A that 
# can be made such that absolute difference between adjacent elements is less 
# than or equal to 1, the first element of the array is p, having one integer q and last element r.

# 入力:
# 1つの数字は1行で入力されます。 つまり1行目はp、2行目はq、3行目はrになります。

# Each line contains an number. The first line is p, second is q, and third is r.

# 例　Example 1

# 7
# 12
# 15
# この時配列は { 7, 8, 9, 10, 11, 12, 13, 14, 15 } になります。
# then Array A would be { 7, 8, 9, 10, 11, 12, 13, 14, 15 }

# 例　Example 2

# 1
# 5
# 3
# この時配列は{ 1,2,3,4,5,4,3 } になります。
# then Array A would be { 1,2,3,4,5,4,3 }

# 出力:
# 例　Example 1 配列のサイズである9を出力してください。
# The output would be integer 9, which is the length of Array A

# 例　Example 2 配列のサイズである7を出力してください。
# The output would be integer 7, which is the length of Array A

# テスト 1
# テストの入力
# テスト 1 の入力をダウンロード
# -13
# 7
# 5
# 期待される出力
# テスト 1 の入力をダウンロード
# 23
# テスト 2
# テストの入力
# テスト 2 の入力をダウンロード
# 3
# 1
# 5
# 期待される出力
# テスト 2 の入力をダウンロード
# 7
# テスト 3
# テストの入力
# テスト 3 の入力をダウンロード
# 7
# 12
# 15
# 期待される出力
# テスト 3 の入力をダウンロード
# 9