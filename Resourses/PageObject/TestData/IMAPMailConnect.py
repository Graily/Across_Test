import imaplib
import email
from email.header import decode_header
import base64
import re

user = 'testing.testovich@bk.ru'
password = 'qWug6a3Jein515wnKsyL'

imap_server = "imap.mail.ru"
imap = imaplib.IMAP4_SSL(imap_server)
imap.login(user, password)

print(imap.select("INBOX"))
print(imap.uid('search', 'ALL'))

