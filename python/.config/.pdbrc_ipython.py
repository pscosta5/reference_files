"""Use IPython interactively in pdb."""
try:
    import IPython
    import traitlets.config
except ImportError:
    pass
else:
    cfg = traitlets.config.get_config()
    cfg.InteractiveShellEmbed.colors = "Linux"  # syntax highlighting
    cfg.InteractiveShellEmbed.confirm_exit = False
