import visdom
import sys

fin = sys.stdin.readline

y = []
x = []

with open('output/log.txt', 'r') as f:
    for line in f:
        if 'epoch' in line:
            map(line.rstrip().split())