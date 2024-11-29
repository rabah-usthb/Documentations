import matplotlib.pyplot as plt
import numpy as np

# Data from the tables
N = [1e3, 2e3, 1e4, 2e4, 1e5, 2e5, 1e6, 2e6, 1e7, 2e7, 1e8, 2e8, 1e9, 2e9]
experimental_time = [8, 9.8, 10.8, 19.4, 33.6, 59.3, 261.1, 505.7, 2458.4, 5071.6, 24458.7, 48759.0, 243312.2, 487828.6]
theoretical_time = [1.08, 2.16, 10.08, 21.6, 108, 216, 1080, 2160, 10800, 21600, 108000, 216000, 108e4, 216e4]

# Convert times to consistent scales
experimental_time = np.array(experimental_time) * 1e-5
theoretical_time = np.array(theoretical_time) * 1e-5

# Plot
plt.figure(figsize=(12, 7))

# Plot experimental time with only the first 14 N values
plt.plot(N[:14], experimental_time, 'o-', label='Experimental (Time x 10^-5)', color='blue')

# Plot theoretical time with all 16 N values
plt.plot(N, theoretical_time, 's-', label='Theoretical (Time x 10^-5)', color='red')



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

