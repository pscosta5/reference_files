# Fonts

# If font issues, check out paths in ~/.matplotlib/fontlist-v310.json
# Can also manually remove ~/.matplotlib/tex.cache

# Rebuild font cache

import matplotlib

matplotlib.font_manager._rebuild()

# -----------------------------------------------------------------------------

# Jupyter


% matplotlib inline  # Inline notebook plots
%config InlineBackend.figure_format = "retina"  # Higher resolution plots

# -----------------------------------------------------------------------------
# Plot snippets

plt.axhline(0, c='#9E9E9E', zorder=1)  # Origin line
plt.title('Lorep ipsum', loc='left')  # Title
plt.legend(bbox_to_anchor=(1,1), loc='upper left')  # Legend
plt.scatter(x, y, alpha=0.5, label='Lorep', s=100, linewidths=0, zorder=2)  # Scatter
plt.tick_params(bottom=True)  # Bottom ticks min, max = ax.get_ylim() or ax.set_ylim() can help
