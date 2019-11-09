import os
import glob
import sys


d = sys.argv[1]
all_files = [os.path.basename(i).split('.')[0] + '\n' for i in glob.glob(os.path.join(d, '*.jpg'))]

target_f = os.path.basename(d) + '.txt'
with open(target_f, 'w') as f:
	f.writelines(all_files)
print('Done!')
