import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$x_1$")
ax.set_ylabel(r"$x_2$")


ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
# Define points for the region
ax.spines['bottom'].set_position(('data', 0))

# Plot the boundary lines for clarity
ax.plot([0, 3], [6, 0], label=r"$  6x_1 + 3x_2 \leq 18$")
ax.plot([0, 4.5], [3, 0], label=r"$ 2x_1 + 3x_2 \leq 9$")
ax.plot([0, 5], [2, 2], label=r"$ x_2 \geq 2$")

ax.plot([2, 2], [0, 5], label=r"$ x_1 \geq 2$")








ax.text(2, 2, r"No Feasible Region", fontsize=14, ha='right', va='bottom')

# Add a legend
ax.legend()

# Show the plot
plt.show()
fig.savefig("ex1.9.pdf")
