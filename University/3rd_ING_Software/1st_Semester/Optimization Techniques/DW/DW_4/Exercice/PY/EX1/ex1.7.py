import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$x_1$")
ax.set_ylabel(r"$x_2$")


ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
# Define points for the region
x_points = [0,1]  # x-coordinates of the polygon
y_points = [2,2]  # y-coordinates of the polygon
ax.spines['bottom'].set_position(('data', 0))
# Fill the region using the points
ax.fill(x_points, y_points, color='lightblue', alpha=0.5, label="Feasible Region")

# Plot the boundary lines for clarity
ax.plot([0, 3], [6, 0], label=r"$  6x_1 + 3x_2 \leq 18$")
ax.plot([0, 4.5], [3, 0], label=r"$ 2x_1 + 3x_2 \leq 9$")
ax.plot([0, 5], [2, 2], label=r"$ x_2 = 2$")
ax.plot([1, 1], [0, 5], label=r"$ x_1 \leq 1$")


ax.plot([0, 1], [2, 2], color='lightblue')

ax.plot([0,16/6], [2, 0]  , color='red', linestyle='--')
ax.plot([0,22/6], [22/8, 0]  , label=r"$Z = 6x_1 + 8x_2 $",color='red', linestyle='--')







ax.plot(0, 2, 'ro') 
ax.plot(1, 2, 'ro')  


ax.text(0.9, 1.7, r"$(1, 2) Z = 22 $", fontsize=12, ha='right', va='bottom')

ax.text(0.4, 2.25, r"$(0, 2) Z = 16$", fontsize=12, ha='right', va='bottom')



# Add a legend
ax.legend()

# Show the plot
plt.show()
fig.savefig("ex1.7.pdf")
