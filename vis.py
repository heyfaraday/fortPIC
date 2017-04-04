from pylab import *
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

import seaborn as sns
sns.set(color_codes=True)
sns.set_style("whitegrid")

x1, x2, x3 = genfromtxt('data/out.dat').T

fig1 = plt.figure(figsize=(8, 8), dpi=100)
fig1.subplots_adjust(left=0.0, right=1.0, top=1.0,
                     bottom=0.0, wspace=0.0, hspace=0.0)
ax1 = fig1.add_subplot(111, projection='3d')
ax1.set_title('x(t)')
ax1.plot(x1, x2, x3, 'g--')

# fig2 = plt.figure(figsize=(8, 8))
# fig2.subplots_adjust(left=0.0, right=1.0, top=1.0,
#                      bottom=0.0, wspace=0.0, hspace=0.0)
# ax2 = fig2.add_subplot(111, projection='3d')
# ax2.set_title('u(t)')
# ax2.plot(u1, u2, u3, 'b--')

show()
