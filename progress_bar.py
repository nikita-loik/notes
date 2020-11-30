def show_progress_bar (
        iteration: int,
        total: int,
        prefix: str = '',
        suffix: str = '',
        decimals: int = 1,
        length: int = 100,
        fill: str = '█',
        printEnd: str = "\n"):
    '''
    https://pypi.org/project/progress/
    
    Call in a loop to create terminal progress bar
    INPUT:
        iteration - required: current iteration
        total     - required: total iterations
        prefix    - optional: prefix string
        suffix    - optional: suffix string
        decimals  - optional: positive number of decimals in percent complete
        length    - optional: character length of bar
        fill      - optional: bar fill character
        printEnd  - optional: end character ('\n' — Mac & Linux, '\r\n' — Windows)
    '''
    percent = ("{0:." + str(decimals) + "f}").format(100 * (iteration / float(total)))
    filled_length = int(length * iteration // total)
    bar = fill * filled_length + '-' * (length - filled_length)
    print(f'\r{prefix} |{bar}| {percent}% {suffix}', end = printEnd)
    # Print New Line on Complete
    if iteration == total: 
        print()