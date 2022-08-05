from torch.utils.tensorboard import SummaryWriter
import numpy as np
import os

# Path Extraction
cp_dirnames = []
os.chdir('./output')
paths = os.listdir()
for path in paths:
    if '.' not in path:
        cp_dirnames.append(path)

print(path)
print(cp_dirnames)

# Getting CheckPoint
for dirname in cp_dirnames:
    checkpoint = torch.load(dirname)
    
    epoch = checkpoint['epoch']
    loss = checkpoint['loss']

    writer = SummaryWriter('output/log.txt')
    for i in range(100):
        writer.add_scalar('')