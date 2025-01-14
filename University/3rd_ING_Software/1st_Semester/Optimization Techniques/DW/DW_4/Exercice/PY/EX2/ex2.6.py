import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$x_1$")
ax.set_ylabel(r"$x_2$")


ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
ax.spines['bottom'].set_position(('data', 0))
# Fill the region using the points

# Plot the boundary lines for clarity
ax.plot([0, 5], [9/6, 29/6], label=r"$  -4x_1 + 6x_2 \leq 9$")
ax.plot([0, 4], [4, 0], label=r"$ x_1 + x_2 \leq 4$")
ax.plot([1, 1], [0, 5], label=r"$ x_1 \leq 1$")
ax.plot([0, 5], [3, 3], label=r"$ x_2 \geq 3$")




ax.text(0.75, 1.25, r"No Feasible Solution", fontsize=14, ha='right', va='bottom')





# Add a legend
ax.legend()

# Show the plot
plt.show()
fig.savefig("ex2.6.pdf")
