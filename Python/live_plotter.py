import matplotlib.pyplot as plt
from matplotlib.lines import Line2D


class LivePlotter:
    def __init__(self):
        plt.ion()
        self.fig = plt.figure()
        self.line = Line2D([], [])

        self.ax = plt.subplot(1, 1, 1)
        self.ax.add_line(self.line)
        self.ax.set_xlabel('Timestep')
        self.ax.set_ylabel('policy average reward')
        self.timestep = []
        self.results = []
        # self.ax.set_yscale('log')
        # self.ax.plot(self.timestep, self.results)

    def update_line(self, timestep, result):
        self.timestep.append(timestep)  # add new x data value
        self.results.append(result)  # add new y data value
        self.line.set_data([self.timestep, self.results])
        self.ax.relim()  # recompute the data limits
        self.ax.autoscale_view()  # automatic axis scaling

        self.fig.canvas.flush_events()  # update the plot and take care of window events (like resizing etc.)

