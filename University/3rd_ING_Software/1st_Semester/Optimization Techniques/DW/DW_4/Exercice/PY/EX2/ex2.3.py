import matplotlib.pyplot as plt

# Create the figure and axis
fig, ax = plt.subplots()

# Set axis labels using LaTeX for subscript formatting
ax.set_xlabel(r"$x_1$")
ax.set_ylabel(r"$x_2$")


ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
# Define points for the region
x_points = [0,0, 3/4,1,1]  # x-coordinates of the polygon
y_points = [0,1.5,2,2,0]  # y-coordinates of the polygon
ax.spines['bottom'].set_position(('data', 0))
# Fill the region using the points
ax.fill(x_points, y_points, color='lightblue', alpha=0.5, label="Feasible Region")

# Plot the boundary lines for clarity
ax.plot([0, 5], [9/6, 29/6], label=r"$  -4x_1 + 6x_2 \leq 9$")
ax.plot([0, 4], [4, 0], label=r"$ x_1 + x_2 \leq 4$")
ax.plot([1, 1], [0, 5], label=r"$ x_1 \leq 1$")
ax.plot([0, 5], [2, 2], label=r"$ x_2 \leq 2$")

ax.plot([1,5], [0, 2]  , color='red', linestyle='--')

ax.plot([0,5], [1.5, 4]  , label=r"$Z = -x_1 + 2x_2 $",color='red', linestyle='--')

ax.plot([0,5], [3.25/2, 8.25/2]  , color='red', linestyle='--')


ax.plot(0, 1.5, 'ro') 
ax.plot(1, 0, 'ro') 
ax.plot(0, 0, 'ro')  
ax.plot(1, 2, 'ro')  
ax.plot(3/4, 2, 'ro')  

ax.text(1.5, 1.75, r"$(1, 2) Z = 3 $", fontsize=12, ha='right', va='bottom')

ax.text(0.65, 2.15, r"$(\frac{3}{4}, 2) Z = 3.25 $", fontsize=12, ha='right', va='bottom')

ax.text(0.35, -0.25, r"$(0, 0)Z = 0 $", fontsize=12, ha='right', va='bottom')

ax.text(0.35, 1.25, r"$(0, 1.5)Z = 3 $", fontsize=12, ha='right', va='bottom')

ax.text(1.5, -0.25, r"$(1, 0) Z = -4 $", fontsize=12, ha='right', va='bottom')




# Add a legend
ax.legend()

# Show the plot
plt.show()
fig.savefig("ex2.3.pdf")
