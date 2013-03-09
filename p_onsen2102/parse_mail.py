from email.Header import decode_header
from email.Parser import Parser
import re, sys

NEWLINE=re.compile(r'(\r|\n|\r\n)$')

def get_header_content(name='', str_encoded=''):
    message = Parser().parse(open(sys.argv[1]))
    for line in NEWLINE.split(message.get(name)):
        decoded_headers = decode_header(line)
        for parts in decoded_headers:
            str_encoded = str_encoded + parts[0]
    return re.sub('(\r\n|\s|\t){2,}', ' ', str_encoded)

print get_header_content("to")
