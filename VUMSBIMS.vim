" vim script for mapping keyboard letters and digits to mathematical variants

" VUMSBIMS stands for:
" Vim Unicode Mathematical Script/Bold/Italic & More Symbols
" (and is the silliest acronym I could think of.)
"
" © 2023 Lasse Hillerøe Petersen
"
let s:uni_lat_key =     "latin____________ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
let s:uni_lat_bol =     "latin_bol________𝐀𝐁𝐂𝐃𝐄𝐅𝐆𝐇𝐈𝐉𝐊𝐋𝐌𝐍𝐎𝐏𝐐𝐑𝐒𝐓𝐔𝐕𝐖𝐗𝐘𝐙𝐚𝐛𝐜𝐝𝐞𝐟𝐠𝐡𝐢𝐣𝐤𝐥𝐦𝐧𝐨𝐩𝐪𝐫𝐬𝐭𝐮𝐯𝐰𝐱𝐲𝐳"
let s:uni_lat_ita =     "latin_ita________𝐴𝐵𝐶𝐷𝐸𝐹𝐺𝐻𝐼𝐽𝐾𝐿𝑀𝑁𝑂𝑃𝑄𝑅𝑆𝑇𝑈𝑉𝑊𝑋𝑌𝑍𝑎𝑏𝑐𝑑𝑒𝑓𝑔ℎ𝑖𝑗𝑘𝑙𝑚𝑛𝑜𝑝𝑞𝑟𝑠𝑡𝑢𝑣𝑤𝑥𝑦𝑧"
let s:uni_lat_bol_ita = "latin_bol_ita____𝑨𝑩𝑪𝑫𝑬𝑭𝑮𝑯𝑰𝑱𝑲𝑳𝑴𝑵𝑶𝑷𝑸𝑹𝑺𝑻𝑼𝑽𝑾𝑿𝒀𝒁𝒂𝒃𝒄𝒅𝒆𝒇𝒈𝒉𝒊𝒋𝒌𝒍𝒎𝒏𝒐𝒑𝒒𝒓𝒔𝒕𝒖𝒗𝒘𝒙𝒚𝒛"
let s:uni_lat_scr =     "latin_scr________𝒜ℬ𝒞𝒟ℰℱ𝒢ℋℐ𝒥𝒦ℒℳ𝒩𝒪𝒫𝒬ℛ𝒮𝒯𝒰𝒱𝒲𝒳𝒴𝒵𝒶𝒷𝒸𝒹ℯ𝒻ℊ𝒽𝒾𝒿𝓀𝓁𝓂𝓃ℴ𝓅𝓆𝓇𝓈𝓉𝓊𝓋𝓌𝓍𝓎𝓏"
let s:uni_lat_bol_scr = "latin_bol_scr____𝓐𝓑𝓒𝓓𝓔𝓕𝓖𝓗𝓘𝓙𝓚𝓛𝓜𝓝𝓞𝓟𝓠𝓡𝓢𝓣𝓤𝓥𝓦𝓧𝓨𝓩𝓪𝓫𝓬𝓭𝓮𝓯𝓰𝓱𝓲𝓳𝓴𝓵𝓶𝓷𝓸𝓹𝓺𝓻𝓼𝓽𝓾𝓿𝔀𝔁𝔂𝔃"
let s:uni_lat_frk =     "latin_frk________𝔄𝔅ℭ𝔇𝔈𝔉𝔊ℌℑ𝔍𝔎𝔏𝔐𝔑𝔒𝔓𝔔ℜ𝔖𝔗𝔘𝔙𝔚𝔛𝔜ℨ𝔞𝔟𝔠𝔡𝔢𝔣𝔤𝔥𝔦𝔧𝔨𝔩𝔪𝔫𝔬𝔭𝔮𝔯𝔰𝔱𝔲𝔳𝔴𝔵𝔶𝔷"
let s:uni_lat_dbl =     "latin_dbl________𝔸𝔹ℂ𝔻𝔼𝔽𝔾ℍ𝕀𝕁𝕂𝕃𝕄ℕ𝕆ℙℚℝ𝕊𝕋𝕌𝕍𝕎𝕏𝕐ℤ𝕒𝕓𝕔𝕕𝕖𝕗𝕘𝕙𝕚𝕛𝕜𝕝𝕞𝕟𝕠𝕡𝕢𝕣𝕤𝕥𝕦𝕧𝕨𝕩𝕪𝕫"
let s:uni_lat_bol_frk = "latin_bol_frk____𝕬𝕭𝕮𝕯𝕰𝕱𝕲𝕳𝕴𝕵𝕶𝕷𝕸𝕹𝕺𝕻𝕼𝕽𝕾𝕿𝖀𝖁𝖂𝖃𝖄𝖅𝖆𝖇𝖈𝖉𝖊𝖋𝖌𝖍𝖎𝖏𝖐𝖑𝖒𝖓𝖔𝖕𝖖𝖗𝖘𝖙𝖚𝖛𝖜𝖝𝖞𝖟"
let s:uni_lat_san =     "latin_san________𝖠𝖡𝖢𝖣𝖤𝖥𝖦𝖧𝖨𝖩𝖪𝖫𝖬𝖭𝖮𝖯𝖰𝖱𝖲𝖳𝖴𝖵𝖶𝖷𝖸𝖹𝖺𝖻𝖼𝖽𝖾𝖿𝗀𝗁𝗂𝗃𝗄𝗅𝗆𝗇𝗈𝗉𝗊𝗋𝗌𝗍𝗎𝗏𝗐𝗑𝗒𝗓"
let s:uni_lat_san_bol = "latin_san_bol____𝗔𝗕𝗖𝗗𝗘𝗙𝗚𝗛𝗜𝗝𝗞𝗟𝗠𝗡𝗢𝗣𝗤𝗥𝗦𝗧𝗨𝗩𝗪𝗫𝗬𝗭𝗮𝗯𝗰𝗱𝗲𝗳𝗴𝗵𝗶𝗷𝗸𝗹𝗺𝗻𝗼𝗽𝗾𝗿𝘀𝘁𝘂𝘃𝘄𝘅𝘆𝘇"
let s:uni_lat_san_ita = "latin_san_ita____𝘈𝘉𝘊𝘋𝘌𝘍𝘎𝘏𝘐𝘑𝘒𝘓𝘔𝘕𝘖𝘗𝘘𝘙𝘚𝘛𝘜𝘝𝘞𝘟𝘠𝘡𝘢𝘣𝘤𝘥𝘦𝘧𝘨𝘩𝘪𝘫𝘬𝘭𝘮𝘯𝘰𝘱𝘲𝘳𝘴𝘵𝘶𝘷𝘸𝘹𝘺𝘻"
let s:uni_lat_san_bol = "latin_san_bol_ita𝘼𝘽𝘾𝘿𝙀𝙁𝙂𝙃𝙄𝙅𝙆𝙇𝙈𝙉𝙊𝙋𝙌𝙍𝙎𝙏𝙐𝙑𝙒𝙓𝙔𝙕𝙖𝙗𝙘𝙙𝙚𝙛𝙜𝙝𝙞𝙟𝙠𝙡𝙢𝙣𝙤𝙥𝙦𝙧𝙨𝙩𝙪𝙫𝙬𝙭𝙮𝙯"
let s:uni_lat_mon =     "latin_mon________𝙰𝙱𝙲𝙳𝙴𝙵𝙶𝙷𝙸𝙹𝙺𝙻𝙼𝙽𝙾𝙿𝚀𝚁𝚂𝚃𝚄𝚅𝚆𝚇𝚈𝚉𝚊𝚋𝚌𝚍𝚎𝚏𝚐𝚑𝚒𝚓𝚔𝚕𝚖𝚗𝚘𝚙𝚚𝚛𝚜𝚝𝚞𝚟𝚠𝚡𝚢𝚣"
let s:uni_dotless =     "dotless__________𝚤𝚥"
let s:uni_grk_std =     "greek_3xx________ΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡ_ΣΤΥΦΧΨΩ_αβγδεζηθικλμνξοπρςστυφχψω"
let s:uni_grk_bol =     "greek_bol________𝚨𝚩𝚪𝚫𝚬𝚭𝚮𝚯𝚰𝚱𝚲𝚳𝚴𝚵𝚶𝚷𝚸𝚹𝚺𝚻𝚼𝚽𝚾𝚿𝛀𝛁𝛂𝛃𝛄𝛅𝛆𝛇𝛈𝛉𝛊𝛋𝛌𝛍𝛎𝛏𝛐𝛑𝛒𝛓𝛔𝛕𝛖𝛗𝛘𝛙𝛚𝛛𝛜𝛝𝛞𝛟𝛠𝛡"
let s:uni_grk_ita =     "greek_ita________𝛢𝛣𝛤𝛥𝛦𝛧𝛨𝛩𝛪𝛫𝛬𝛭𝛮𝛯𝛰𝛱𝛲𝛳𝛴𝛵𝛶𝛷𝛸𝛹𝛺𝛻𝛼𝛽𝛾𝛿𝜀𝜁𝜂𝜃𝜄𝜅𝜆𝜇𝜈𝜉𝜊𝜋𝜌𝜍𝜎𝜏𝜐𝜑𝜒𝜓𝜔𝜕𝜖𝜗𝜘𝜙𝜚𝜛"
let s:uni_grk_bol_ita = "greek_bol_ita____𝜜𝜝𝜞𝜟𝜠𝜡𝜢𝜣𝜤𝜥𝜦𝜧𝜨𝜩𝜪𝜫𝜬𝜭𝜮𝜯𝜰𝜱𝜲𝜳𝜴𝜵𝜶𝜷𝜸𝜹𝜺𝜻𝜼𝜽𝜾𝜿𝝀𝝁𝝂𝝃𝝄𝝅𝝆𝝇𝝈𝝉𝝊𝝋𝝌𝝍𝝎𝝏𝝐𝝑𝝒𝝓𝝔𝝕"
let s:uni_grk_san_bol = "greek_san_bol____𝝖𝝗𝝘𝝙𝝚𝝛𝝜𝝝𝝞𝝟𝝠𝝡𝝢𝝣𝝤𝝥𝝦𝝧𝝨𝝩𝝪𝝫𝝬𝝭𝝮𝝯𝝰𝝱𝝲𝝳𝝴𝝵𝝶𝝷𝝸𝝹𝝺𝝻𝝼𝝽𝝾𝝿𝞀𝞁𝞂𝞃𝞄𝞅𝞆𝞇𝞈𝞉𝞊𝞋𝞌𝞍𝞎𝞏"
let s:uni_grk_san_bol_ita = 
                       \"greek_san_bol_ita𝞐𝞑𝞒𝞓𝞔𝞕𝞖𝞗𝞘𝞙𝞚𝞛𝞜𝞝𝞞𝞟𝞠𝞡𝞢𝞣𝞤𝞥𝞦𝞧𝞨𝞩𝞪𝞫𝞬𝞭𝞮𝞯𝞰𝞱𝞲𝞳𝞴𝞵𝞶𝞷𝞸𝞹𝞺𝞻𝞼𝞽𝞾𝞿𝟀𝟁𝟂𝟃𝟄𝟅𝟆𝟇𝟈𝟉"
let s:uni_grk_digamma = "digamma__________𝟊𝟋"
let s:uni_dig_key =     "digit____________0123456789"
let s:uni_dig_sup =     "digit_sup________⁰¹²³⁴⁵⁶⁷⁸⁹"
let s:uni_dig_sub =     "digit_sub________₀₁₂₃₄₅₆₇₈₉"
let s:uni_dig_bol =     "digit_bol________𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗"
let s:uni_dig_dbl =     "digit_dbl________𝟘𝟙𝟚𝟛𝟜𝟝𝟞𝟟𝟠𝟡"
let s:uni_dig_san =     "digit_san________𝟢𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫"
let s:uni_dig_san_bol = "digit_san_bol____𝟬𝟭𝟮𝟯𝟰𝟱𝟲𝟳𝟴𝟵"
let s:uni_dig_mon =     "digit_mon________𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿"
let s:uni_mat_op1 =     "                 ∀∁∂∃∄∅∆∇∈∉∊∋∌∍∎∏ ∐∑−∓∔∕∖∗∘∙√∛∜∝∞∟ ∠∡∢∣∤∥∦∧∨∩∪∫∬∭∮∯ ∰∱∲∳∴∵∶∷∸∹∺∻∼∽∾∿"
let s:uni_mat_op2 =     "                 ≀≁≂≃≄≅≆≇≈≉≊≋≌≍≎≏ ≐≑≒≓≔≕≖≗≘≙≚≛≜≝≞≟ ≠≡≢≣≤≥≦≧≨≩≪≫≬≭≮≯ ≰≱≲≳≴≵≶≷≸≹≺≻≼≽≾≿"
let s:uni_mat_op3 =     "                 ⊀⊁⊂⊃⊄⊅⊆⊇⊈⊉⊊⊋⊌⊍⊎⊏ ⊐⊑⊒⊓⊔⊕⊖⊗⊘⊙⊚⊛⊜⊝⊞⊟ ⊠⊡⊢⊣⊤⊥⊦⊧⊨⊩⊪⊫⊬⊭⊮⊯ ⊰⊱⊲⊳⊴⊵⊶⊷⊸⊹⊺⊻⊼⊽⊾⊿"
let s:uni_mat_op4 =     "                 ⋀⋁⋂⋃⋄⋅⋆⋇⋈⋉⋊⋋⋌⋍⋎⋏ ⋐⋑⋒⋓⋔⋕⋖⋗⋘⋙⋚⋛⋜⋝⋞⋟ ⋠⋡⋢⋣⋤⋥⋦⋧⋨⋩⋪⋫⋬⋭⋮⋯ ⋰⋱⋲⋳⋴⋵⋶⋷⋸⋹⋺⋻⋼⋽⋾⋿"
let s:uni_mat_sup_bl1 = "                 ⨀⨁⨂⨃⨄⨅⨆⨇⨈⨉⨊⨋⨌⨍⨎⨏ ⨐⨑⨒⨓⨔⨕⨖⨗⨘⨙⨚⨛⨜⨝⨞⨟ ⨠⨡⨢⨣⨤⨥⨦⨧⨨⨩⨪⨫⨬⨭⨮⨯ ⨰⨱⨲⨳⨴⨵⨶⨷⨸⨹⨺⨻⨼⨽⨾⨿"
let s:uni_mat_sup_bl2 = "                 ⩀⩁⩂⩃⩄⩅⩆⩇⩈⩉⩊⩋⩌⩍⩎⩏ ⩐⩑⩒⩓⩔⩕⩖⩗⩘⩙⩚⩛⩜⩝⩞⩟ ⩠⩡⩢⩣⩤⩥⩦⩧⩨⩩⩪⩫⩬⩭⩮⩯ ⩰⩱⩲⩳⩴⩵⩶⩷⩸⩹⩺⩻⩼⩽⩾⩿"
let s:uni_mat_sup_bl3 = "                 ⪀⪁⪂⪃⪄⪅⪆⪇⪈⪉⪊⪋⪌⪍⪎⪏ ⪐⪑⪒⪓⪔⪕⪖⪗⪘⪙⪚⪛⪜⪝⪞⪟ ⪠⪡⪢⪣⪤⪥⪦⪧⪨⪩⪪⪫⪬⪭⪮⪯ ⪰⪱⪲⪳⪴⪵⪶⪷⪸⪹⪺⪻⪼⪽⪾⪿"
let s:uni_mat_sup_bl4 = "                 ⫀⫁⫂⫃⫄⫅⫆⫇⫈⫉⫊⫋⫌⫍⫎⫏ ⫐⫑⫒⫓⫔⫕⫖⫗⫘⫙⫚⫛⫝̸⫝⫞⫟ ⫠⫡⫢⫣⫤⫥⫦⫧⫨⫩⫪⫫⫬⫭⫮⫯ ⫰⫱⫲⫳⫴⫵⫶⫷⫸⫹⫺⫻⫼⫽⫾⫿"
let s:uni_grk_msc =     "                 ύώϏϐϑϒϓϔϕϖϗϘϙϚϛϜϝϞϟϠϡϢϣϤϥϦϧϨϩϪϫϬϭϮϯϰϱϲϳϴϵ϶ϷϸϹϺϻϼϽϾϿ"

let s:nato_spelling_lat = [ "alfa", "bravo", "charlie", "delta", "echo", "foxtrot", "golf", "hotel", "india", "juliet", "kilo", "lima", "mike", "november", "oscar", "papa", "quebec", "romeo", "sierra", "tango", "uniform", "victor", "whiskey", "xray", "yankee", "zulu", "ALFA", "BRAVO", "CHARLIE", "DELTA", "ECHO", "FOXTROT", "GOLF", "HOTEL", "INDIA", "JULIET", "KILO", "LIMA", "MIKE", "NOVEMBER", "OSCAR", "PAPA", "QUEBEC", "ROMEO", "SIERRA", "TANGO", "UNIFORM", "VICTOR", "WHISKEY", "XRAY", "YANKEE", "ZULU" ]

let s:ccb_spelling_lat = [ "able", "baker", "charlie", "dog", "easy", "fox", "george", "how", "item", "jig", "king", "love", "mike", "nan", "oboe", "peter", "queen", "roger", "sugar", "tare", "uncle", "victor", "william", "xray", "yoke", "zebra", "ABLE", "BAKER", "CHARLIE", "DOG", "EASY", "FOX", "GEORGE", "HOW", "ITEM", "JIG", "KING", "LOVE", "MIKE", "NAN", "OBOE", "PETER", "QUEEN", "ROGER", "SUGAR", "TARE", "UNCLE", "VICTOR", "WILLIAM", "XRAY", "YOKE", "ZEBRA" ]

let s:ccb_spelling_dig = [ "zero", "wun", "too", "thuree", "fower", "fiyiv", "six", "seven", "ate", "niner" ]
function! s:uni_at(s, pos)
    return matchstr(a:s, ".", byteidx(a:s, a:pos))
endfunction

function! Uni_unmap()
    for i in range(17,17+52-1)
        try
            :execute "iunmap ". s:uni_at(s:uni_lat_key, i)
        catch /.*/
        endtry
    endfor
    for i in range(17,17+10-1)
        try
            :execute "iunmap ". s:uni_at(s:uni_dig_key, i)
        catch /.*/
        endtry
    endfor
    try
        let space_unmap = " for space mapped as " . maparg(" ", "i")
        :execute "iunmap <space>"
    catch /.*/
        let space_unmap = space_unmap . " catched."
    endtry
    try
        silent execute "iunmap <ESC>"
    catch /.*/
    endtry
    echo "unmapped Uni mappings" . space_unmap
endfunction

let s:justonespace = v:false

function! Uni_unmap_on_space(flag)
    if a:flag
        let s:justonespace = v:true
    else
        let s:justonespace = v:false
    endif
endfunction

function! Uni_map_kbd(kbd_lat_map, kbd_dig_map)
    if type(a:kbd_lat_map) == v:t_list
        for i in range(17,17+52-1)
            silent execute "inoremap " . s:uni_at(s:uni_lat_key, i) . " " . a:kbd_lat_map[i-17] . "<space>"
        endfor
    elseif type(a:kbd_lat_map) == v:t_string
        for i in range(17,17+52-1)
            silent execute "inoremap " . s:uni_at(s:uni_lat_key, i) . " " . s:uni_at(a:kbd_lat_map, i)
        endfor
    endif
    if type(a:kbd_dig_map) == v:t_list
        for i in range(17,17+10-1)
            silent execute "inoremap " . s:uni_at(s:uni_dig_key, i) . " " . a:kbd_dig_map[i-17] . "<space>"
        endfor
    elseif type(a:kbd_dig_map) == v:t_string
        for i in range(17,17+10-1)
            silent execute "inoremap " . s:uni_at(s:uni_dig_key, i) . " " . s:uni_at(a:kbd_dig_map, i)
        endfor
    endif
    if s:justonespace
        :execute "inoremap <space> <ESC>:call Uni_unmap()<CR>a "
    endif
    :execute "inoremap <ESC> <ESC>:call Uni_unmap()<CR>"
endfunction

function! Uni_map_lat_nato()
    call Uni_map_kbd(s:nato_spelling_lat, s:ccb_spelling_dig)
endfunction

function! Uni_map_lat_ccb()
    call Uni_map_kbd(s:ccb_spelling_lat, s:ccb_spelling_dig)
endfunction

function! Uni_map_lat_sup()
    call Uni_map_kbd(0, s:uni_dig_sup)
endfunction

function! Uni_map_lat_sub()
    call Uni_map_kbd(0, s:uni_dig_sub)
endfunction

function! Uni_map_lat_bol()
    call Uni_map_kbd(s:uni_lat_bol, s:uni_dig_bol)
endfunction

function! Uni_map_lat_ita()
    call Uni_map_kbd(s:uni_lat_ita, 0)
endfunction

function! Uni_map_lat_bol_ita()
    call Uni_map_kbd(s:uni_lat_bol_ita, s:uni_dig_bol)
endfunction

function! Uni_map_lat_scr()
    call Uni_map_kbd(s:uni_lat_scr, 0)
endfunction

function! Uni_map_lat_bol_scr()
    call Uni_map_kbd(s:uni_lat_bol_scr, s:uni_dig_bol)
endfunction

function! Uni_map_lat_frk()
    call Uni_map_kbd(s:uni_lat_frk, 0)
endfunction

function! Uni_map_lat_dbl()
    call Uni_map_kbd(s:uni_lat_dbl, s:uni_dig_dbl)
endfunction

function! Uni_map_lat_bol_frk()
    call Uni_map_kbd(s:uni_lat_bol_frk, s:uni_dig_bol)
endfunction

function! Uni_map_lat_san()
    call Uni_map_kbd(s:uni_lat_san, 0)
endfunction

function! Uni_map_lat_san_bol()
    call Uni_map_kbd(s:uni_lat_san_bol, s:uni_dig_bol)
endfunction

function! Uni_map_lat_san_ita()
    call Uni_map_kbd(s:uni_lat_san_ita, 0)
endfunction

function! Uni_map_lat_san_bol_ita()
    call Uni_map_kbd(s:uni_lat_san_bol_ita, s:uni_dig_bol)
endfunction

function! Uni_map_lat_mon()
    call Uni_map_kbd(s:uni_lat_mon, s:uni_dig_mon)
endfunction

function! Uni_map_grk()
    call Uni_map_kbd(s:uni_grk_std, 0)
endfunction

function! Uni_map_grk_bol()
    call Uni_map_kbd(s:uni_grk_bol, 0)
endfunction

function! Uni_map_grk_ita()
    call Uni_map_kbd(s:uni_grk_ita, 0)
endfunction

function! Uni_map_grk_bol_ita()
    call Uni_map_kbd(s:uni_grk_bol_ita, 0)
endfunction

function! Uni_map_grk_san_bol()
    call Uni_map_kbd(s:uni_grk_san_bol, 0)
endfunction

function! Uni_map_grk_san_bol_ita()
    call Uni_map_kbd(s:uni_grk_san_bol_ita, 0)
endfunction

inoremap <F2>b <ESC>:call Uni_map_lat_bol()<CR>a
inoremap <F2>i <ESC>:call Uni_map_lat_ita()<CR>a
inoremap <F2>bi <ESC>:call Uni_map_lat_bol_ita()<CR>a
inoremap <F2>S <ESC>:call Uni_map_lat_scr()<CR>a
inoremap <F2>Sb <ESC>:call Uni_map_lat_bol_scr()<CR>a
inoremap <F2>f <ESC>:call Uni_map_lat_frk()<CR>a
inoremap <F2>d <ESC>:call Uni_map_lat_dbl()<CR>a
inoremap <F2>bf <ESC>:call Uni_map_lat_bol_frk()<CR>a
inoremap <F2>s <ESC>:call Uni_map_lat_san()<CR>a
inoremap <F2>sb <ESC>:call Uni_map_san_bol()<CR>a
inoremap <F2>si <ESC>:call Uni_map_san_ita()<CR>a
inoremap <F2>sbi <ESC>:call Uni_map_san_bol_ita()<CR>a
inoremap <F2>g <ESC>:call Uni_map_grk()<CR>a
inoremap <F2>gb <ESC>:call Uni_map_grk_bol()<CR>a
inoremap <F2>gi <ESC>:call Uni_map_grk_ita()<CR>a
inoremap <F2>gbi <ESC>:call Uni_map_grk_bol_ita()<CR>a
inoremap <F2>gsb <ESC>:call Uni_map_grk_san_bol()<CR>a
inoremap <F2>gsbi <ESC>:call Uni_map_grk_san_bol_ita()<CR>a
inoremap <F2>n <ESC>:call Uni_map_lat_nato()<CR>a
inoremap <F2>c <ESC>:call Uni_map_lat_ccb()<CR>a
inoremap <F2>SS <ESC>:call Uni_map_lat_sup()<CR>a
inoremap <F2>ss <ESC>:call Uni_map_lat_sub()<CR>a

