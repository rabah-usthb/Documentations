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
ax.plot([0, 3], [6, 0], label=r"$  6x_1 + 3x_2 \leq 18$")
ax.plot([0, 4.5], [3, 0], label=r"$ 2x_1 + 3x_2 \leq 9$")
ax.plot([0, 5], [2, 2], label=r"$ x_2 \geq 2$")
ax.plot([1, 1], [0, 5], label=r"$ x_1 \leq 1$")
ax.plot([0, 5], [3, 3], label=r"$ x_2 \geq 3$")

ax.plot([0,4], [3, 0]  , label=r"$Z = 6x_1 + 8x_2 $",color='red', linestyle='--')


ax.plot(0, 3, 'o', color='lightblue')


ax.text(0.4, 3.25, r"$(0, 3) Z = 24$", fontsize=12, ha='right', va='bottom')


# Add a legend
ax.legend()

# Show the plot
plt.show()
fig.savefig("ex1.8.pdf")
