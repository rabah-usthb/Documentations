import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$x_1$")
ax.set_ylabel(r"$x_2$")

ax.set_ylim(0, 5.2)
ax.set_xlim(0, 7.35)

# Plot the boundary lines for clarity
ax.plot([0, 5], [5, 0], label=r"$x_1 + x_2 \leq 5$")
ax.plot([0, 7], [4, 0], label=r"$4x_1 + 7x_2 \leq 28$")
ax.plot([0, 7.35], [3, 3], label=r"$x_2 \geq 3$")
ax.plot([2, 2], [0, 5.2], label=r"$x_1 \geq 2$")





ax.set_xlim(0, None)
ax.set_ylim(0, None)

# Add a legend
ax.legend()

# Show the plot
plt.grid()
plt.show()

fig.savefig("ex1.7.pdf", format='pdf')
