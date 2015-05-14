### sixel output, or compile gnuplot with --with-bitmap-terminals
    gnuplot> set terminal pngcairo
    gnuplot> set output '| pngtopnm | pnmquant 16 | ppmtosixel'
    gnuplot> splot x * x
