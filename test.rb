class VendingMachine
  def initialize
    puts "OK"
    @total = 0
    @juice = [
      { name: "Coke", price: 120, stock: 5 },
      { name: "RedBull", price: 200, stock: 5 },
      { name: "Water", price: 100, stock: 5 }
    ]
    @sale_amount = 0
  end

  def total
    @total
  end

  def acceptable_money
    [10,50,100,500,1000]
  end

  def insert(money)
    if acceptable_money.include?(money)
      @total += money
      puts money.to_s + " 円を投入しました！"
      puts "残金: " + @total.to_s
    else
      puts "受付不可能な貨幣を返却します"
      puts "返却: " + money.to_s
    end
  end

  def refund
    puts @total
    @total = 0
  end

  def stock
    @juice
  end

  def sale_amount
    @sale_amount
  end

  def purchase(idx)
    juice = @juice[idx]
    if @total >= juice[:price]
      if juice[:stock] >= 1
        if idx == 0
          puts 'さわやかなるひととき♪'
        elsif idx == 1
          puts 'もっとがんばれる↑'
        else
          puts 'からだにやさしく'
        end
        puts juice[:name] + 'お買い上げ!'
        @sale_amount += juice[:price]
        juice[:stock] -= 1
        @total -= juice[:price]
        puts "残金: " + @total.to_s
      else
        puts 'NG'
        puts '在庫がありません（汗）管理者にご連絡を'
        @total 
      end
    else
      puts 'NG'
      puts 'お金が足りないよ〜'
      @total
    end
  end

  def message
    
  end

  def balance
    puts @total
    @total = 0
  end

  def list
    list = []
    @juice.each do |juice|
      if @total >= juice[:price] && juice[:stock] >= 1
        list << juice[:name]+"!"
      end
    end
    puts list
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