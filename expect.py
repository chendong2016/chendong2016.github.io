#!/usr/bin/python
import pexpect
import os

os.chdir('/home/chendong/5/chendong2016.github.io')
os.system('git pull')
os.system('git add .')
os.system('git commit -m update')

#foo = pexpect.spawn('scp -P 29999 body.txt root@144.168.61.108:/root/')
foo = pexpect.spawn('git push')
foo.expect('Username.*:')
foo.sendline('chendong2016')
print foo.read()

foo.expect('.*ssword:*')
foo.sendline('chendong1979')
print foo.read()
