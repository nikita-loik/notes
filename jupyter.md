# Jupyter

## Jupyter Themes

[jupyter themes](https://github.com/dunovank/jupyter-themes)

1. install jupyter themes

    ```bash
    pip install jupyterthemes
    ```

2. list available themes

    ```bash
    jt -l
    ```

3. install theme

    ```bash
    jt -t theme_name
    ```

4. revert theme

    ```bash
    jt -r
    ```

5. install [not too bad a theme](https://medium.com/@rbmsingh/making-jupyter-dark-mode-great-5adaedd814db)

    ```bash
    jt -t monokai -f fira -fs 13 -nf ptsans -nfs 11 -N -kl -cursw 5 -cursc r -cellw 95% -T
    ```

6. adjust graphs, inside jupyter run

    ```bash
    from jupyterthemes import jtplot
    jtplot.style(theme='monokai', context='notebook', ticks=True, grid=False)
    ```

## Jupyter Tricks

1. Clear notebook outputs:

    ```bash
    jupyter nbconvert --clear-output [NOTEBOOK_PATH]
    ```
