import matplotlib.pyplot as plt
import numpy as np

# Data from the tables
N = [1000003 , 2000003 , 4000037 , 8000009 , 16000057 , 32000011 , 64000031 , 128000003 , 256000001 , 512000009 , 1024000009 , 2048000011]
experimental_time = [3.643, 10.051, 12.12, 24.284, 48.268, 99.244, 191.605, 380.24, 753.837, 1517.66, 3042.77, 6038.826]
theoretical_time = [3.03, 6.06, 12.12, 24.24, 48.48, 96.96, 193.9, 387.84, 775.837, 1551.13, 3102.72, 6205.4]

# Convert times to consistent scales
experimental_time = np.array(experimental_time) * 1e-3
theoretical_time = np.array(theoretical_time) * 1e-3

# Plot
plt.figure(figsize=(12, 7))

# Plot experimental time with only the first 14 N values
plt.plot(N, experimental_time, 'o-', label='Experimental (Time x 10^-3)', color='blue')

# Plot theoretical time with all 16 N values
plt.plot(N, theoretical_time, 's-', label='Theoretical Best Case (Time x 10^-3)', color='green')

plt.xlim(left=min(N))  # Start x-axis at the minimum N value
plt.ylim(bottom=min(min(experimental_time), min(theoretical_time)))  # Start y-axis at the minimum time value


# Labels and title
plt.xlabel('N (Data Size)')
plt.ylabel('Time (seconds)')
plt.title('Experimental vs Theoretical Time')
plt.legend()
plt.grid(which="both", linestyle="--", linewidth=0.5)

# Save as PDF
plt.savefig('plot.pdf', format='pdf', bbox_inches='tight')

# Show the plot
plt.show()

