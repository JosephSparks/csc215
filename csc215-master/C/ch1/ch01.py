def clean_white_space(s):
    """
    Copy an input string to an output string, replacing one or more
    consecutive whitespace characters (spaces, tabs, newlines) with a single
    space.

      >>> clean_white_space('This     is    a    \t     test.')
      'This is a test.'
    """
    WHITESPACE = ' \t\n'
    ns = ''
    inspace = False

    for ch in s:
        if not inspace:
            if ch in WHITESPACE:
                ns += ' '
                inspace = True
            else:
                ns += ch
        else:
            if ch in WHITESPACE:
                continue
            else:
                ns += ch
                inspace = False

    return ns


if __name__ == '__main__':
    import doctest
    doctest.testmod()
