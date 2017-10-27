ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

def winner(ballots)
  winners = Hash.new(0)
  ballots.each do |votes|
    votes.each do |position, name|
       if position == 1
          winners[name]+= 3
        elsif position == 2
          winners[name]+= 2
        elsif position == 3
          winners[name]+= 1
        end
    end
  end
    winners.sort{ |name ,total_votes|
      name[1]<=>total_votes[1]}.each { |elem|
        puts "#{elem[0]} got #{elem[1]} votes"
    }
end

winner(ballots)
