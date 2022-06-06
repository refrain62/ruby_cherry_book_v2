a = []
while a.size < 5
    a << 1
end
a #=> [1, 1, 1, 1, 1]

a = []
while a.size < 5 do a << 1 end
a #=> [1, 1, 1, 1, 1]

a = []
a << 1 while a.size < 5
a #=> [1, 1, 1, 1, 1]


a = []
while false
    # このコードは常に条件が偽になるので実行されない
    a << 1
end
a #=> []


# begin ... end で囲むとどんな条件でも最低1回は実行される
begin
    a << 1
end while false
a #=> [ 1 ]


a = [10, 20, 30, 40, 50]
until a.size <= 3 
    a.delete_at( -1 )
end
a #=> [10, 20, 30]

