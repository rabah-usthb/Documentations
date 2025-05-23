import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$x_1$")
ax.set_ylabel(r"$x_2$")

ax.set_ylim(0, 5.2)
ax.set_xlim(0, 7.35)
# Define points for the region
x_points = [0,0,1, 1]  # x-coordinates of the polygon
y_points = [3,4,24/7,3]  # y-coordinates of the polygon

# Fill the region using the points
ax.fill(x_points, y_points, color='lightblue', alpha=0.5, label="Feasible Region")

# Plot the boundary lines for clarity


ax.plot([0, 5], [5, 0], label=r"$x_1 + x_2 \leq 5$")
ax.plot([0, 7], [4, 0], label=r"$4x_1 + 7x_2 \leq 28$")
ax.plot([1,1], [0, 5.2], label=r"$x_1 \leq 1$")

ax.plot([0, 7.35], [3, 3], label=r"$x_2 \geq 3$")


ax.plot([0,18/5], [3, 0]  , label=r"$Z = 5x_1 + 6x_2 $",color='red', linestyle='--')

ax.plot([0,179/35], [179/42, 0]  , color='red', linestyle='--')

ax.plot([0,23/5], [23/6, 0]  , color='red', linestyle='--')

ax.plot([0,24/5], [4, 0]  , color='red', linestyle='--')

ax.plot(0, 4, 'ro')  
ax.plot(0, 3, 'ro') 
ax.plot(1, 3, 'ro')  
ax.plot(1, 24/7, 'ro')  

ax.text(0, 4, r"$(0, 4) Z = 24 $", fontsize=12, ha='right', va='bottom')

ax.text(1, 3, r"$(1, 3) Z = 23 $", fontsize=12, ha='right', va='bottom')
ax.text(0, 3, r"$(0, 3) Z = 18 $", fontsize=12, ha='right', va='bottom')
ax.text(1, 24/7, r"$(1, \frac{24}{7}) Z = \frac{179}{7} \simeq 25.57$", fontsize=12, ha='right', va='bottom')
# Set the axis limits
ax.set_xlim(0, None)
ax.set_ylim(0, None)

# Add a legend
ax.legend()

# Show the plot
plt.grid()
plt.show()

fig.savefig("ex1.4.pdf", format='pdf')
