from pyinstrument import Profiler


profiler = Profiler()
profiler.start()

# *==============================================
# =        Do computation here                  =
# =============================================*/




profiler.stop()
print(profiler.output_text(unicode=True, color=True))
