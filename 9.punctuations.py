punctuations = '''!()-[]{};:'"\,<>./?@#$%^&*_~'''

inp_str = input("Please..Enter a string: ")

no_punc = ""
for char in inp_str:
   if char not in punctuations:
       no_punc = no_punc + char

print("Punctuation Free String: ",no_punc)
