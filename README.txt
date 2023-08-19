This repository will maybe one day contain more than 𝑜𝑛𝑒 possibly
useful vim script.



𝟏. 𝑽𝑼𝑴𝑺𝑩𝑰𝑴𝑺

VUMSBIMS - 𝑉𝑖𝑚 𝑈𝑛𝑖𝑐𝑜𝑑𝑒 𝑀𝑎𝑡ℎ𝑒𝑚𝑎𝑡𝑖𝑐𝑎𝑙 𝑆𝑐𝑟𝑖𝑝𝑡/𝐵𝑜𝑙𝑑𝑓𝑎𝑐𝑒/𝐼𝑡𝑎𝑙𝑖𝑐 & 𝑀𝑜𝑟𝑒 𝑆𝑦𝑚𝑏𝑜𝑙𝑠
is a script to switch the keyboard letters and digits to produce Unicode
symbols from mainly the Mathematical Alphanumeric Symbols Block.


𝟏.𝟏. 𝑫𝒆𝒔𝒄𝒓𝒊𝒑𝒕𝒊𝒐𝒏 𝒂𝒏𝒅 𝒖𝒔𝒂𝒈𝒆

As the script is the first vimscript program I have ever written, it is
probably not bug-free, nor is it likely to be working smoothly, or integrate
well with your Vim setup. It is what I could manage to produce the first
day I tried writing a "proper" Vim script. It currently works for my needs,
which is the main goal.

It contains a long list of variables containing the various symbols/letters
and digits, and some functions to map them to the alfanumeric keys in insert
mode. Also some for "alternative" uses, which can be used for inspiration.

Most, but not all, are mapped using inoremap to be activated while
in insert mode, by pressing <F2> followed by the style code:

b   - Latin Boldface 𝐁𝐨𝐥𝐝𝐟𝐚𝐜𝐞 𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗𝟎
i   - Latin Italic 𝐼𝑡𝑎𝑙𝑖𝑐
bi  - Latin Bold Italic 𝑩𝒐𝒍𝒅 𝑰𝒕𝒂𝒍𝒊𝒄
S   - Latin Script ℒ𝒶𝓉𝒾𝓃 𝓈𝒸𝓇𝒾𝓅𝓉
Sb  - Latin Bold Script 𝓑𝓸𝓵𝓭 𝓢𝓬𝓻𝓲𝓹𝓽
d   - Latin Doublestroke (Blackboard) Bold 𝔻𝕠𝕦𝕓𝕝𝕖𝕤𝕥𝕣𝕠𝕜𝕖 𝕓𝕠𝕝𝕕 𝟙𝟚𝟛𝟜𝟝𝟞𝟟𝟠𝟡𝟘
f   - Latin Fraktur 𝔉𝔯𝔞𝔨𝔱𝔲𝔯 123
bf  - Latin Bold Fraktur 𝕭𝖔𝖑𝖉 𝕱𝖗𝖆𝖐𝖙𝖚𝖗 𝟏𝟐𝟑
s   - Latin Sans-serif Sans 𝖲𝖺𝗇𝗌 123
sb  - Latin Sans-serif Bold 𝗦𝗮𝗻𝘀 𝗕𝗼𝗹𝗱 𝟏𝟐𝟑
si  - Latin Sans-serif Italic 𝘚𝘢𝘯𝘴 𝘐𝘵𝘢𝘭𝘪𝘤 123
sb  - Latin Sans-serif Bold Italic 𝙎𝙖𝙣𝙨 𝘽𝙤𝙡𝙙 𝙄𝙩𝙖𝙡𝙞𝙘 𝟏𝟐𝟑
g   - Greek Τθισ ισ αμμ ηςεελ το νε!
gb  - Greek Bold 𝚺𝛚𝛘𝛒𝛂𝛕𝛈𝛓
gi  - Greek Italic 𝛣𝛼𝜅𝜀 𝛱!
gbi - Greek Bold Italic 𝜢𝝇𝜺𝜺𝝀 𝜝𝝄𝝁𝜹 𝜤𝝉𝜶𝝁𝜾𝜸 𝜷𝝊𝝉 𝝉𝜽𝜺 𝝁𝜺𝝉𝝉𝜺𝝇𝝈 𝜶𝝇𝜺 𝜾𝝃 𝝉𝜽𝜺 𝝌𝝇𝝄𝝃𝜼 𝝅𝝁𝜶𝜸𝜺!
gsb - Greek Sans Bold 𝝜𝞁𝝴𝝴𝝽 𝝨𝝰𝝽𝞂 𝝗𝝾𝝻𝝳 (the letter mapping makes no sense.)
gsbi - Greek Sans Bold Italic 𝞾𝞐 𝞨 𝞜𝞶𝞷𝞸 𝞼𝞢𝞭𝞓𝟃𝞪𝞐𝟃𝞩𝞬𝞒𝞡𝞻𝞡
n   - NATO/ICAO phonetic alphabet (International Radiotelephony Spelling
        Alphabet) NOVEMBER alfa tango oscar
c   - 1943 US/UK/Australia Combined Communications Board Spelling Alphabet
        wun niner fower thuree ABLE BAKER CHARLIE 
SS  - Superscript (digits only) ¹²³⁴⁵⁶⁷⁸⁹⁰
ss  - subscript (digits only) ₁₂₃₄₅₆₇₈₉₀

The activation seems to require typing the F2 and style code fast, and does
not always work. I might fix that one day to work some other way. The
activation was also supposed to be selectively until the next space, or until
leaving insert mode. This doesn't work perfectly. Modify to suit your needs
and desires! Leaving insert mode seems to reliably unmap all the keys and
return to typing normal unmapped letters and digits. I have also not made
any attempt to make a sensible keyboard mapping for greek letters - I don't
know greek, and only use greek letters sparingly for mathematical symbols.
Fixing this should be fairly easy, as should adding other mappings, like
for Ukrainian cyrillic letters, or whatever you might have a need for typing.
For example, to be able to type ROT-13 "encrypted" text directly, simply copy
and ROT-13 encode the variable that lists the normal characters, and add
a function to activate it.

𝟏.𝟏 𝑯𝒐𝒘 𝒕𝒐 𝒊𝒏𝒔𝒕𝒂𝒍𝒍
Put the VUMSBIMS.vim file in your .vim directory or wherever you prefer, and
source it from your vimrc file. Perhaps you want to look through it first,
and maybe load it from the command prompt using :source VUMSBIMS.vim

You will need a terminal that support Unicode, and a font (or fonts) that have
the relevant symbols. I use ixfce4-terminal. My current font is Iosevka, which
I can recommend checking out, although some characters are taken from
substitute fonts. A monospace serif font that implements all the Mathematical
Alphanumeric Symbols (ie visibly distinguishable sans-serif variant) would be
very nice; I have searched for such a thing, but not found any satisfying font
so far.

𝟏.𝟐. 𝑺𝒖𝒑𝒑𝒐𝒓𝒕
I do not provide support for this! It was my first vim script, and may reflect
that in the coding style or whatever, and if 𝐼 could write it, then 𝑦𝑜𝑢 can 
probably also fix it, if you find something wrong.

Polite requests may - or may not - get a response. Suggestions for improvement
are welcome, more so if code is included, but may nevertheless be ignored.

𝟏.𝑨. 𝑹𝒆𝒇𝒆𝒓𝒆𝒏𝒄𝒆𝒔
https://en.wikipedia.org/wiki/Mathematical_Alphanumeric_Symbols
https://en.wikipedia.org/wiki/NATO_phonetic_alphabet
https://github.com/be5invis/Iosevka
