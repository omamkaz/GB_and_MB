#!/usr/bin/env python3

import os, sys
import pstr
import click

pss = pstr.pcolor().Pss

mgkb  =  [1024, 1048576, 134217728, 1073741824]
tmgkb =  ['MB', 'KB', 'Bytes', 'Bits']

import humanize as hz 
#### this code for print(GB = MB from 1GB to 50GB)
# Gp = 1024
# Y = 1
# H = 50
# H +=1
# while Y < H :
#     U = f'{Y} GB =--> '
#     print(U, Gp * Y)
#     Y +=1


@click.command()
@click.option('-n', '--num', help='select a number for countune')
@click.option('-f', '--fr', help='select a number from 0 to ...', default=1)
@click.option('-t', '--to', help='select a number to 0 ...', default=0)
@click.help_option("-h", "--help")
@click.version_option('2.0', '-v', '--version')

def GPS(fr, to, num):
    # print(4096 / 1024) # for show size by MB
    if num:
        fr = int(num)
        to = int(num)

    try:
        Gp = 1024
        Y = fr
        H = to
        H += 1
        while Y < H:
            SC = pss(" <!g>└──<!e>")
            i = 0 

            pstr.pss("<!bu> -"*15, end='')
            print(pss(f"\n <!g>├──<!e> {Y}\t\t<!r>GB"))
            
            for s in range(0, 4):
	            print(SC, pss(f"<!y>{Y * mgkb[s]}\t<!c>{tmgkb[s]}<!e>"))
            Y += 1
    except Exception:
        traceback.print_exc(file=sys.stderr)
        sys.exit(1)
    except ValueError:
        print(pss("<!r> \n [x] Pleas Enter number not string ...<!e>"), file=sys.stderr)
        sys.exit(1)
        
if __name__ == '__main__' :
    GPS()
