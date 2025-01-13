import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$y_1$")
ax.set_ylabel(r"$y_2$")

max_x = 5
min_x = 0

ax.set_xlim(min_x, max_x)
ax.set_ylim(-1, 3)
# Define points for the region
x_points = [0,0, 9/8,0.5]  # x-coordinates of the polygon
y_points = [0,1,5/8,0]  # y-coordinates of the polygon
ax.spines['bottom'].set_position(('data', 0))
# Fill the region using the points
ax.fill(x_points, y_points, color='lightblue', alpha=0.5, label="Feasible Region")

# Plot the boundary lines for clarity
ax.plot([0, 3], [1, 0], label=r"$ - y_1 - 3y_2 \geq -3$")
ax.plot([0, max_x], [-0.5, 4.5], label=r"$ -2y_1 + 2y_2 \geq -1$")
ax.plot([min_x, max_x], [1, 1], label=r"$ y_2 \leq 1$")


ax.plot([0,0.75], [1, 0]  , color='red', linestyle='--')


ax.plot([0,4/8], [4/6, 0]  , label=r"$Z = -8y_1 - 6y_2 $",color='red', linestyle='--')

ax.plot([0,12.75/8], [12.75/6, 0]  , color='red', linestyle='--')


ax.plot(0, 1, 'ro') 
ax.plot(0, 0, 'ro')  
ax.plot(0.5, 0, 'ro')  
ax.plot(9/8, 5/8, 'ro')  

ax.text(0.7, 4.1, r"$(0, 4) Z = 24 $", fontsize=12, ha='right', va='bottom')

ax.text(0.35, -0.25, r"$(0, 0)Z = 0 $", fontsize=12, ha='right', va='bottom')
ax.text(0.85, -0.25, r"$(\frac{1}{2}, 0) Z = -4 $", fontsize=12, ha='right', va='bottom')
ax.text(1.25, 0.3, r"$(\frac{9}{8}, \frac{5}{8}) Z = -12.75 $", fontsize=12, ha='right', va='bottom')
ax.text(0.4, 1.1, r"$(0, 1) Z = -6$", fontsize=12, ha='right', va='bottom')

ax.set_xticks([i for i in range(1, max_x)])
# Add a legend
ax.legend()

# Show the plot
plt.show()
fig.savefig("ex1.1.pdf", format='pdf')
