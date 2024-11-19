def categorize(arr)
  yield(arr)
end

  birds = %w(raven finch hawk eagle)
  #p birds # => ['raven','finch','hawk','eagle']
  categorize(birds) do |_,_,*raptors|
     p "Raptors : #{raptors.join(', ')}"
  end