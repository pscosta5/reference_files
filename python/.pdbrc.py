"""Conguration file for pdb++."""
import pdb


class Config(pdb.DefaultConfig):
    line_number_color = "90"
    filename_color = "94"
    pygments_formatter_class = "pygments.formatters.TerminalTrueColorFormatter"
    pygments_formatter_kwargs = {"style": "material"}
