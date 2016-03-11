#!/usr/bin/python
import pexpect
import os
import sys

def git_expect(repodir, u, p):
    os.chdir(repodir)
    os.system('git pull')
    os.system('git add .')
    os.system('git commit -m update')

    foo = pexpect.spawn('git push')
    foo.expect('.*Username.*:')
    foo.sendline(u)

    foo.expect('.*ssword:*')
    foo.sendline(p)
    print foo.read()

def main(argv):
    git_expect(argv[1], argv[2], argv[3])

if __name__ == '__main__':
    main(sys.argv)
