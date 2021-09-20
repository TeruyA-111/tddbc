class VendingMachine
  def initialize
    puts "OK"
    @total = 0
    @juice = {
      name: "coke",
      price: 120,
      stock: 5
      }
  end

  def total
    @total
  end

  def insert(money)
    if money==10 || money==100
      puts "insert "+money.to_s+" yen"
      @total += money
      @total
    else
      puts "refund invalid money"
      money
    end
  end

  def refund
    puts @total
    @total = 0
  end

  def stock
    @juice
  end

end

# vm = VendingMachine.new

# vm.total # => 0と出力される

# # 10円を投入
# vm.insert(10)
# => 何を返すと良いか？

# # 100円を投入
# vm.insert(100)
# => 何を返すと良いか？

# # 貨幣として存在しない111円を投入
# vm.insert(111) # => 何を返すといいのか？考える

# vm.total # => 110と出力される

# 値段	price
# 名前	name