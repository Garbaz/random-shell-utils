#!/usr/bin/python3

import sys
import math

args = sys.argv[1:]

# -------------------------------- #

buckets = {}

total = 0

for fn in args:
    with open(fn) as f:
        for c in "".join(f.read().split()):
            buckets[c] = buckets.get(c, 0) + 1
            total += 1


sorted_buckets = sorted(buckets.items(), key=lambda x: x[1], reverse=True)

print("Character\tCount\tPercentage")

for c, f in sorted_buckets:
    print(f"{c}\t{f}\t{f/total * 100 : .1f}")
