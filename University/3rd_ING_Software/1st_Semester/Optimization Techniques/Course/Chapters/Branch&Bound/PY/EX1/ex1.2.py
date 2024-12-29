import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$x_1$")
ax.set_ylabel(r"$x_2$")

ax.set_xlim(0, 7.35)
# Define points for the region
x_points = [0,0,3, 5]  # x-coordinates of the polygon
y_points = [0,2,2,0]  # y-coordinates of the polygon

# Fill the region using the points
ax.fill(x_points, y_points, color='lightblue', alpha=0.5, label="Feasible Region")

# Plot the boundary lines for clarity
ax.plot([0, 5], [5, 0], label=r"$x_1 + x_2 \leq 5$")
ax.plot([0, 7], [4, 0], label=r"$4x_1 + 7x_2 \leq 28$")
ax.plot([0, 7.35], [2, 2], label=r"$x_2 \leq 2$")


ax.plot([0,27/5], [27/6, 0]  , color='red', linestyle='--')

ax.plot([0,12/5], [2, 0]  , label=r"$Z = 5x_1 + 6x_2 $",color='red', linestyle='--')

ax.plot([5,0], [0, 25/6]  , color='red', linestyle='--')


ax.plot(3, 2, 'ro')  
ax.plot(0, 2, 'ro')  
ax.plot(5, 0, 'ro')  

ax.text(3, 2, r"$(3, 2) Z = 27 $", fontsize=12, ha='right', va='bottom')

ax.text(5, 0, r"$(5, 0) Z = 25 $", fontsize=12, ha='right', va='bottom')
ax.text(0.65, 2.1, r"$(0, 2) Z = 12 $", fontsize=12, ha='right', va='bottom')
# Set the axis limits
ax.set_xlim(0, None)
ax.set_ylim(0, None)

# Add a legend
ax.legend()

# Show the plot
plt.grid()
plt.show()

fig.savefig("ex1.2.pdf", format='pdf')
