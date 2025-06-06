import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$x_1$")
ax.set_ylabel(r"$x_2$")


ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
# Define points for the region
x_points = [0,0, 2,2]  # x-coordinates of the polygon
y_points = [0,1,1,0]  # y-coordinates of the polygon
ax.spines['bottom'].set_position(('data', 0))
# Fill the region using the points
ax.fill(x_points, y_points, color='lightblue', alpha=0.5, label="Feasible Region")

# Plot the boundary lines for clarity
ax.plot([0, 3], [6, 0], label=r"$  6x_1 + 3x_2 \leq 18$")
ax.plot([0, 4.5], [3, 0], label=r"$ 2x_1 + 3x_2 \leq 9$")
ax.plot([0, 5], [1, 1], label=r"$ x_2 \leq 1$")
ax.plot([2, 2], [0, 5], label=r"$ x_1 \leq 2$")

ax.plot([2,0], [0, 12/8]  , color='red', linestyle='--')
ax.plot([0,8/6], [1, 0]  , color='red', linestyle='--')
ax.plot([0,20/6], [20/8, 0]  , label=r"$Z = 6x_1 + 8x_2 $",color='red', linestyle='--')


ax.plot(0, 1, 'ro') 
ax.plot(2, 0, 'ro') 
ax.plot(0, 0, 'ro')  
ax.plot(2, 1, 'ro')  

ax.text(2.35, 1.1, r"$(2, 1) Z = 20 $", fontsize=12, ha='right', va='bottom')

ax.text(0.35, -0.25, r"$(0, 0)Z = 0 $", fontsize=12, ha='right', va='bottom')
ax.text(2.5, -0.25, r"$(2, 0) Z = 12 $", fontsize=12, ha='right', va='bottom')
ax.text(0.4, 1.25, r"$(0, 1) Z = 8$", fontsize=12, ha='right', va='bottom')

# Add a legend
ax.legend()

# Show the plot
plt.show()
fig.savefig("ex1.3.pdf")
