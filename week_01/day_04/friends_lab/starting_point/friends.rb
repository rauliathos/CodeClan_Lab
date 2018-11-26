
#--------------------------(1)-----------------------------

def get_name(person)
  return person[:name]
end

#--------------------------(2)-----------------------------

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

#--------------------------(3)-----------------------------

def likes_to_eat(person, food)
  return person[:favourites][:snacks].include?(food)
end

#--------------------------(4)-----------------------------

def add_friend(person, name)
  person[:friends].push(name).length
end

#--------------------------(5)-----------------------------

def remove_friend(person, name)
    person[:friends].delete(name)
end

#--------------------------(6)-----------------------------


def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

#--------------------------(7)-----------------------------

def loan_fun(lender,lendee,num)
           lendee[:monies] += num
    return lender[:monies] -= num
end

def favourite_food(people)
  new_arrary = []
  for person in people
    new_arrary.concat(person[:favourites][:snacks])
  end
  return new_arrary
end

def no_friends(people)
  new_arrary = []
  for person in people
    if person[:friends].empty?
      new_arrary.push(person[:name])
    end
  end
  return new_arrary

end
