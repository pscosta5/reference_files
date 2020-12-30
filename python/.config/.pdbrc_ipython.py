"""Use IPython interactively in pdb."""
try:
    import IPython
    import traitlets.config
except ImportError:
    pass
else:
    cfg = traitlets.config.get_config()
    # Copy config from ipython_config.py
    cfg.InteractiveShellEmbed.color_info = True
    cfg.InteractiveShellEmbed.colors = "Linux"
    cfg.InteractiveShellEmbed.confirm_exit = False
    cfg.InteractiveShellEmbed.autoformatter = "black"
    cfg.InteractiveShellEmbed.highlight_matching_brackets = True
    cfg.InteractiveShellEmbed.highlighting_style = "stata-dark"
    cfg.InteractiveShellEmbed.true_color = True

