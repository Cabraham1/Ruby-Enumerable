module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    oyin = []
    list.each do |said|
      oyin.push(said) if yield(said)
    end
    puts oyin.length == list.length
  end

  def any?
    oyin = []
    list.each do |said|
      oyin.push(said) if yield(said)
    end
    puts !oyin.empty?
  end

  def filter?
    oyin = []
    list.each do |said|
      oyin.push(said) if yield(said)
    end
    puts oyin
  end
end
