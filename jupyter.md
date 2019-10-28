# Jupyter Themes

[jupyter themes](https://github.com/dunovank/jupyter-themes)
1. install jupyter themes<br/>
```bash
pip install jupyterthemes
```
2. list available themes<br/>
```bash
jt -l
```
3. install theme<br/>
```bash
jt -t theme_name
```
4. revert theme<br/>
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
