"""Use rich to enable automatic pretty printing and traceback."""
import sys

def detect_notebook() -> bool:
    """
    Detect if a notebook is being run.

    Logic taken from https://github.com/tqdm/tqdm/blob/master/tqdm/autonotebook.py
    """
    try:
        get_ipython = sys.modules["IPython"].get_ipython
        if "IPKernelApp" not in get_ipython().config:
            raise ImportError("console")
        if "VSCODE_PID" in os.environ:
            raise ImportError("vscode")
    except:
        is_notebook = False
    else:
        is_notebook = True
    finally:
        return is_notebook

if not detect_notebook():
    try:
        # IPython will try to run all startup files in the default profile in
        # addition to files in PYTHONSTARTUP
        # This will cause it to run only once
        RICH_RENDERING
    except NameError:
        try:
            from rich import inspect
            from rich.console import Console
            import rich.console
            import rich.pretty
            import rich.syntax
            import rich.traceback

            import textwrap
        except ImportError:
            pass
        else:

            def print_code(statement: str, console: Console) -> None:
                """Print the import statement when the REPL is run."""
                console.print(
                    rich.syntax.Syntax(
                        statement, lexer_name="python", theme="ansi_dark"
                    )
                )

            console = rich.console.Console()
            imports = textwrap.dedent(
                """
            from rich import inspect
            from rich.console import Console
            import rich.console
            import rich.pretty
            import rich.syntax
            import rich.traceback

            import textwrap

            rich.pretty.install()
            rich.traceback.install(theme="ansi_dark")
            """
            )
            print_code(imports, console=console)

            rich.pretty.install()
            rich.traceback.install(theme="ansi_dark")
    finally:
        RICH_RENDERING = True
