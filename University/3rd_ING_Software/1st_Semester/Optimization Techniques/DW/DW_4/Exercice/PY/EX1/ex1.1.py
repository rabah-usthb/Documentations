import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$x_1$")
ax.set_ylabel(r"$x_2$")


ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
# Define points for the region
x_points = [0,0, 9/4,3]  # x-coordinates of the polygon
y_points = [0,3,3/2,0]  # y-coordinates of the polygon
ax.spines['bottom'].set_position(('data', 0))
# Fill the region using the points
ax.fill(x_points, y_points, color='lightblue', alpha=0.5, label="Feasible Region")

# Plot the boundary lines for clarity
ax.plot([0, 3], [6, 0], label=r"$  6x_1 + 3x_2 \leq 18$")
ax.plot([0, 4.5], [3, 0], label=r"$ 2x_1 + 3x_2 \leq 9$")


ax.plot([3,0], [0, 9/4]  , color='red', linestyle='--')

ax.plot([0,4], [3, 0]  , label=r"$Z = 6x_1 + 8x_2 $",color='red', linestyle='--')

ax.plot([0,25.5/6], [25.5/8, 0]  , color='red', linestyle='--')


ax.plot(0, 3, 'ro') 
ax.plot(3, 0, 'ro') 
ax.plot(0, 0, 'ro')  
ax.plot(9/4, 3/2, 'ro')  

ax.text(2.45, 1.8, r"$(\frac{9}{4}, \frac{3}{2}) Z = 25.5 $", fontsize=12, ha='right', va='bottom')

ax.text(0.35, -0.25, r"$(0, 0)Z = 0 $", fontsize=12, ha='right', va='bottom')
ax.text(3.5, -0.25, r"$(3, 0) Z = 18 $", fontsize=12, ha='right', va='bottom')
ax.text(0.4, 3.25, r"$(0, 3) Z = 24$", fontsize=12, ha='right', va='bottom')

# Add a legend
ax.legend()

# Show the plot
plt.show()
fig.savefig("ex1.1.pdf")
