#!/usr/bin/env python3

import re

with open('packets.list.full', 'r') as f:
  lines = f.read().splitlines()
for line in lines:
  name_ = re.split('-[0-9]', line)
  print( name_[0] )

f.close()
