import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$x_1$")
ax.set_ylabel(r"$x_2$")

ax.set_ylim(0, 5.2)
ax.set_xlim(0, 7.35)
# Define points for the region
x_points = [0]  # x-coordinates of the polygon
y_points = [4]  # y-coordinates of the polygon

# Fill the region using the points
ax.fill(x_points, y_points, color='lightblue', label="Feasible Region")

# Plot the boundary lines for clarity


ax.plot([0, 5], [5, 0], label=r"$x_1 + x_2 \leq 5$")
ax.plot([0, 7], [4, 0], label=r"$4x_1 + 7x_2 \leq 28$")
ax.plot([1,1], [0, 5.2], label=r"$x_1 \leq 1$")

ax.plot([0, 7.35], [3, 3], label=r"$x_2 \geq 3$")

ax.plot([0, 7.35], [4, 4], label=r"$x_2 \geq 4$")




ax.plot([0,24/5], [4, 0]  , color='red', linestyle='--')

ax.plot(0, 4, 'o', color='lightblue')  # Light blue point at (0, 4)

ax.text(0, 4, r"$(0, 4) Z = 24 $", fontsize=12, ha='right', va='bottom')

# Set the axis limits
ax.set_xlim(0, None)
ax.set_ylim(0, None)

# Add a legend
ax.legend()

# Show the plot
plt.grid()
plt.show()

fig.savefig("ex1.6.pdf", format='pdf')
