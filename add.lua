-- I have no idea if this works or not, can't test it

-- ...but I think it does

a = argv
for i,v in ipairs(a)
do
   if a[i+1] ~= nil then
      print(a[i+1])
   end
end
