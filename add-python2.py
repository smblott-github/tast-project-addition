import sys

total = 0
for s in sys.argv[1:]:
   # Add the new value to total.
   # NOTE(smblott) There's a (deliberate) error here.
   total += int(s) % 4

print total
