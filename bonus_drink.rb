class BonusDrink
  # 3本買うごとに1本おまけがもらえる
  def self.total_count_for(amount)
    if amount/3 == 0
      return amount
    end

    bonus = 0
    akibin = amount
    while (akibin/3) >0 do
      change = akibin/3
      akibin = akibin%3 + change
      if (akibin/3) == 0
        break
      end
      bonus += change
    end
    amount + bonus + akibin
  end
end