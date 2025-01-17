import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import FuncFormatter

# Data from the tables
N = [1000003 , 2000003 , 4000037 , 8000009 , 16000057 , 32000011 , 64000031 , 128000003 , 256000001 , 512000009 , 1024000009 , 2048000011]
experimental_time_3 = [ 7.5 , 7.6 , 7.7 , 8.2 , 8.8 , 9.2 , 11.4 , 12 , 14.6 , 17 , 25.3 , 26.5]
experimental_time_4 = [ 6.5 , 7.4 , 7.5 , 7.8 , 8.5 , 8.7 , 11.2 , 11.4 , 13.8 , 14.5, 17.1 , 19]

# Convert times to consistent scales
experimental_time_3 = np.array(experimental_time_3) * 1e-5
experimental_time_4 = np.array(experimental_time_4) * 1e-5


plt.figure(figsize=(12, 7))

plt.plot(N, experimental_time_3, 'o-', label='Experimental Third Solution (Time x 10^-5)', color='green')
plt.plot(N, experimental_time_4, 'o-', label='Experimental Solution Solution (Time x 10^-5)', color='orange')

plt.xlim(left=min(N))  # Start x-axis at the minimum N value
plt.ylim(bottom= min(min(experimental_time_3), min(experimental_time_4)))  # Start y-axis at the minimum time value

# Labels and title
plt.xlabel('N (Data Size)')
plt.ylabel('Time (seconds)')
plt.title('Solution 3 vs Solution 4')
plt.legend()
plt.grid(which="both", linestyle="--", linewidth=0.5)

# Use FuncFormatter to enforce scientific notation
formatter = FuncFormatter(lambda x, pos: '{:.2e}'.format(x))  # '{:.2e}' enforces scientific notation

# Apply the formatter to the y-axis
plt.gca().yaxis.set_major_formatter(formatter)

# Save as PDF
plt.savefig('plot.pdf', format='pdf', bbox_inches='tight')

# Show the plot
plt.show()


