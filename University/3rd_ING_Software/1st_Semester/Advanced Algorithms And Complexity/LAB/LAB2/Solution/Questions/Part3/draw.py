import matplotlib.pyplot as plt
import numpy as np

# Data from the tables
N = [1000003 , 2000003 , 4000037 , 8000009 , 16000057 , 32000011 , 64000031 , 128000003 , 256000001 , 512000009 , 1024000009 , 2048000011]
experimental_time_1 = [3.643, 10.051, 12.12, 24.284, 48.268, 99.244, 191.605, 380.24, 753.837, 1517.66, 3042.77, 6038.826]
experimental_time_2 = [1.676 , 3.247 , 6.842 , 13.009 , 25.376 , 52.545 , 102.985 , 205.319 , 397.85 , 802.53 , 1597.518 , 3200.743]
experimental_time_3 = [ 7.5 , 7.6 , 7.7 , 8.2 , 8.8 , 9.2 , 11.4 , 12 , 14.6 , 17 , 25.3 , 26.5]

# Convert times to consistent scales
experimental_time_1 = np.array(experimental_time_1) * 1e-3
experimental_time_2 = np.array(experimental_time_2) * 1e-3
experimental_time_3 = np.array(experimental_time_3) * 1e-5

plt.figure(figsize=(12, 7))

plt.plot(N, experimental_time_1, 'o-', label='Experimental First Solution (Time x 10^-3)', color='blue')
plt.plot(N, experimental_time_2, 'o-', label='Experimental Second Solution (Time x 10^-3)', color='red')
plt.plot(N, experimental_time_3, 'o-', label='Experimental Third Solution (Time x 10^-5)', color='green')

plt.xlim(left=min(N))  # Start x-axis at the minimum N value
plt.ylim(bottom=min(min(experimental_time_1), min(experimental_time_2 ) , min(experimental_time_3)))  # Start y-axis at the minimum time value


# Labels and title
plt.xlabel('N (Data Size)')
plt.ylabel('Time (seconds)')
plt.title('Solution 1 vs Solution 2 vs Solution 3')
plt.legend()
plt.grid(which="both", linestyle="--", linewidth=0.5)

# Save as PDF
plt.savefig('plot.pdf', format='pdf', bbox_inches='tight')

# Show the plot
plt.show()

