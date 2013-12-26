
-module(sc_spintax).





-export([

    ex_parsed/0,
    ex_string/0,

    parse_dive/1,

    gen_from/1,

    test/0

%   every/1

]).





-include_lib("eunit/include/eunit.hrl").





ex_string() -> 

    "{\n{I have|I've} been {surfing|browsing} online more than {three|3|2|4} hours today, yet I never found any interesting article like yours. {It's|It is} pretty worth enough for me. {In my opinion|Personally|In my view}, if all {webmasters|site owners|website owners|web owners} and bloggers made good content as you did, the {internet|net|web} will be {much more|a lot more} useful than ever before.|\nI {couldn't|could not} {resist|refrain from} commenting. {Very well|Perfectly|Well|Exceptionally well} written!|\n{I will|I'll} {right away|immediately} {take hold of|grab|clutch|grasp|seize|snatch} your {rss|rss feed} as I {can not|can't} {in finding|find|to find} your {email|e-mail} subscription {link|hyperlink} or {newsletter|e-newsletter} service. Do {you have|you've} any? {Please|Kindly} {allow|permit|let} me {realize|recognize|understand|recognise|know} {so that|in order that} I {may just|may|could} subscribe. Thanks.|\n{It is|It's} {appropriate|perfect|the best} time to make some plans for the future and {it is|it's} time to be happy. {I have|I've} read this post and if I could I {want to|wish to|desire to} suggest you {few|some} interesting things or {advice|suggestions|tips}. {Perhaps|Maybe} you {could|can} write next articles referring to this article. I {want to|wish to|desire to} read {more|even more} things about it!|\n{It is|It's} {appropriate|perfect|the best} time to make {a few|some} plans for {the future|the longer term|the long run} and {it is|it's} time to be happy. {I have|I've} {read|learn} this {post|submit|publish|put up} and if I {may just|may|could} I {want to|wish to|desire to} {suggest|recommend|counsel} you {few|some} {interesting|fascinating|attention-grabbing} {things|issues} or {advice|suggestions|tips}. {Perhaps|Maybe} you {could|can} write {next|subsequent} articles {relating to|referring to|regarding} this article. I {want to|wish to|desire to} {read|learn} {more|even more} {things|issues} {approximately|about} it!|\n{I have|I've} been {surfing|browsing} {online|on-line} {more than|greater than} {three|3} hours {these days|nowadays|today|lately|as of late}, {yet|but} I {never|by no means} {found|discovered} any {interesting|fascinating|attention-grabbing} article like yours. {It's|It is} {lovely|pretty|beautiful} {worth|value|price} {enough|sufficient} for me. {In my opinion|Personally|In my view}, if all {webmasters|site owners|website owners|web owners} and bloggers made {just right|good|excellent} {content|content material} as {you did|you probably did}, the {internet|net|web} {will be|shall be|might be|will probably be|can be|will likely be} {much more|a lot more} {useful|helpful} than ever before.|\nAhaa, its {nice|pleasant|good|fastidious} {discussion|conversation|dialogue} {regarding|concerning|about|on the topic of} this {article|post|piece of writing|paragraph} {here|at this place} at this {blog|weblog|webpage|website|web site}, I have read all that, so {now|at this time} me also commenting {here|at this place}.|\nI am sure this {article|post|piece of writing|paragraph} has touched all the internet {users|people|viewers|visitors}, its really really {nice|pleasant|good|fastidious} {article|post|piece of writing|paragraph} on building up new {blog|weblog|webpage|website|web site}.|\nWow, this {article|post|piece of writing|paragraph} is {nice|pleasant|good|fastidious}, my {sister|younger sister} is analyzing {such|these|these kinds of} things, {so|thus|therefore} I am going to {tell|inform|let know|convey} her.|\n{Saved as a favorite|bookmarked!!}, {I really like|I like|I love} {your blog|your site|your web site|your website}!|\nWay cool! Some {very|extremely} valid points! I appreciate you {writing this|penning this} {article|post|write-up} {and the|and also the|plus the} rest of the {site is|website is} {also very|extremely|very|also really|really} good.|\nHi, {I do believe|I do think} {this is an excellent|this is a great} {blog|website|web site|site}. I stumbledupon it ;) {I will|I am going to|I'm going to|I may} {come back|return|revisit} {once again|yet again} {since I|since i have} {bookmarked|book marked|book-marked|saved as a favorite} it. Money and freedom {is the best|is the greatest} way to change, may you be rich and continue to {help|guide} {other people|others}.|\nWoah! I'm really {loving|enjoying|digging} the template/theme of this {site|website|blog}. It's simple, yet effective. A lot of times it's {very hard|very difficult|challenging|tough|difficult|hard} to get that \"perfect balance\" between {superb usability|user friendliness|usability} and {visual appearance|visual appeal|appearance}. I must say {that you've|you have|you've} done a {awesome|amazing|very good|superb|fantastic|excellent|great} job with this. {In addition|Additionally|Also}, the blog loads {very|extremely|super} {fast|quick} for me on {Safari|Internet explorer|Chrome|Opera|Firefox}. {Superb|Exceptional|Outstanding|Excellent} Blog!|\nThese are {really|actually|in fact|truly|genuinely} {great|enormous|impressive|wonderful|fantastic} ideas in {regarding|concerning|about|on the topic of} blogging. You have touched some {nice|pleasant|good|fastidious} {points|factors|things} here. Any way keep up wrinting.|\n{I love|I really like|I enjoy|I like|Everyone loves} what you guys {are|are usually|tend to be} up too. {This sort of|This type of|Such|This kind of} clever work and {exposure|coverage|reporting}! Keep up the {superb|terrific|very good|great|good|awesome|fantastic|excellent|amazing|wonderful} works guys I've {incorporated||added|included} you guys to {|my|our||my personal|my own} blogroll.|\n{Howdy|Hi there|Hey there|Hi|Hello|Hey}! Someone in my {Myspace|Facebook} group shared this {site|website} with us so I came to {give it a look|look it over|take a look|check it out}. I'm definitely {enjoying|loving} the information. I'm {book-marking|bookmarking} and will be tweeting this to my followers! {Terrific|Wonderful|Great|Fantastic|Outstanding|Exceptional|Superb|Excellent} blog and {wonderful|terrific|brilliant|amazing|great|excellent|fantastic|outstanding|superb} {style and design|design and style|design}.|\n{I love|I really like|I enjoy|I like|Everyone loves} what you guys {are|are usually|tend to be} up too. {This sort of|This type of|Such|This kind of} clever work and {exposure|coverage|reporting}! Keep up the {superb|terrific|very good|great|good|awesome|fantastic|excellent|amazing|wonderful} works guys I've {incorporated|added|included} you guys to {|my|our|my personal|my own} blogroll.|\n{Howdy|Hi there|Hey there|Hi|Hello|Hey} would you mind {stating|sharing} which blog platform you're {working with|using}? I'm {looking|planning|going} to start my own blog {in the near future|soon} but I'm having a {tough|difficult|hard} time {making a decision|selecting|choosing|deciding} between BlogEngine/Wordpress/B2evolution and Drupal. The reason I ask is because your {design and style|design|layout} seems different then most blogs and I'm looking for something {completely unique|unique}. P.S {My apologies|Apologies|Sorry} for {getting|being} off-topic but I had to ask!|\n{Howdy|Hi there|Hi|Hey there|Hello|Hey} would you mind letting me know which {webhost|hosting company|web host} you're {utilizing|working with|using}? I've loaded your blog in 3 {completely different|different} {internet browsers|web browsers|browsers} and I must say this blog loads a lot {quicker|faster} then most. Can you {suggest|recommend} a good {internet hosting|web hosting|hosting} provider at a {honest|reasonable|fair} price? {Thanks a lot|Kudos|Cheers|Thank you|Many thanks|Thanks}, I appreciate it!|\n{I love|I really like|I like|Everyone loves} it {when people|when individuals|when folks|whenever people} {come together|get together} and share {opinions|thoughts|views|ideas}. Great {blog|website|site}, {keep it up|continue the good work|stick with it}!|\nThank you for the {auspicious|good} writeup. It in fact was a amusement account it. Look advanced to {far|more} added agreeable from you! {By the way|However}, how {can|could} we communicate?|\n{Howdy|Hi there|Hey there|Hello|Hey} just wanted to give you a quick heads up. The {text|words} in your {content|post|article} seem to be running off the screen in {Ie|Internet explorer|Chrome|Firefox|Safari|Opera}. I'm not sure if this is a {format|formatting} issue or something to do with {web browser|internet browser|browser} compatibility but I {thought|figured} I'd post to let you know. The {style and design|design and style|layout|design} look great though! Hope you get the {problem|issue} {solved|resolved|fixed} soon. {Kudos|Cheers|Many thanks|Thanks}|\nThis is a topic {that is|that's|which is} {close to|near to} my heart… {Cheers|Many thanks|Best wishes|Take care|Thank you}! {Where|Exactly where} are your contact details though?|\nIt's very {easy|simple|trouble-free|straightforward|effortless} to find out any {topic|matter} on {net|web} as compared to {books|textbooks}, as I found this {article|post|piece of writing|paragraph} at this {website|web site|site|web page}.|\nDoes your {site|website|blog} have a contact page? I'm having {a tough time|problems|trouble} locating it but, I'd like to {send|shoot} you an {e-mail|email}. I've got some {creative ideas|recommendations|suggestions|ideas} for your blog you might be interested in hearing. Either way, great {site|website|blog} and I look forward to seeing it {develop|improve|expand|grow} over time.|\n{Hola|Hey there|Hi|Hello|Greetings}! I've been {following|reading} your {site|web site|website|weblog|blog} for {a long time|a while|some time} now and finally got the {bravery|courage} to go ahead and give you a shout out from {New Caney|Kingwood|Huffman|Porter|Houston|Dallas|Austin|Lubbock|Humble|Atascocita} {Tx|Texas}! Just wanted to {tell you|mention|say} keep up the {fantastic|excellent|great|good} {job|work}!|\nGreetings from {Idaho|Carolina|Ohio|Colorado|Florida|Los angeles|California}! I'm {bored to tears|bored to death|bored} at work so I decided to {check out|browse} your {site|website|blog} on my iphone during lunch break. I {enjoy|really like|love} the {knowledge|info|information} you {present|provide} here and can't wait to take a look when I get home. I'm {shocked|amazed|surprised} at how {quick|fast} your blog loaded on my {mobile|cell phone|phone} .. I'm not even using WIFI, just 3G .. {Anyhow|Anyways}, {awesome|amazing|very good|superb|good|wonderful|fantastic|excellent|great} {site|blog}!|\nIts {like you|such as you} {read|learn} my {mind|thoughts}! You {seem|appear} {to understand|to know|to grasp} {so much|a lot} {approximately|about} this, {like you|such as you} wrote the {book|e-book|guide|ebook|e book} in it or something. {I think|I feel|I believe} {that you|that you simply|that you just} {could|can} do with {some|a few} {%|p.c.|percent} to {force|pressure|drive|power} the message {house|home} {a bit|a little bit}, {however|but} {other than|instead of} that, {this is|that is} {great|wonderful|fantastic|magnificent|excellent} blog. {A great|An excellent|A fantastic} read. {I'll|I will} {definitely|certainly} be back.|\nI visited {multiple|many|several|various} {websites|sites|web sites|web pages|blogs} {but|except|however} the audio {quality|feature} for audio songs {current|present|existing} at this {website|web site|site|web page} is {really|actually|in fact|truly|genuinely} {marvelous|wonderful|excellent|fabulous|superb}.|\n{Howdy|Hi there|Hi|Hello}, i read your blog {occasionally|from time to time} and i own a similar one and i was just {wondering|curious} if you get a lot of spam {comments|responses|feedback|remarks}? If so how do you {prevent|reduce|stop|protect against} it, any plugin or anything you can {advise|suggest|recommend}? I get so much lately it's driving me {mad|insane|crazy} so any {assistance|help|support} is very much appreciated.|\nGreetings! {Very helpful|Very useful} advice {within this|in this particular} {article|post}! {It is the|It's the} little changes {that make|which will make|that produce|that will make} {the biggest|the largest|the greatest|the most important|the most significant} changes. {Thanks a lot|Thanks|Many thanks} for sharing!|\n{I really|I truly|I seriously|I absolutely} love {your blog|your site|your website}.. {Very nice|Excellent|Pleasant|Great} colors & theme. Did you {create|develop|make|build} {this website|this site|this web site|this amazing site} yourself? Please reply back as I'm {looking to|trying to|planning to|wanting to|hoping to|attempting to} create {my own|my very own|my own personal} {blog|website|site} and {would like to|want to|would love to} {know|learn|find out} where you got this from or {what the|exactly what the|just what the} theme {is called|is named}. {Thanks|Many thanks|Thank you|Cheers|Appreciate it|Kudos}!|\n{Hi there|Hello there|Howdy}! This {post|article|blog post} {couldn't|could not} be written {any better|much better}! {Reading through|Looking at|Going through|Looking through} this {post|article} reminds me of my previous roommate! He {always|constantly|continually} kept {talking about|preaching about} this. {I will|I'll|I am going to|I most certainly will} {forward|send} {this article|this information|this post} to him. {Pretty sure|Fairly certain} {he will|he'll|he's going to} {have a good|have a very good|have a great} read. {Thank you for|Thanks for|Many thanks for|I appreciate you for} sharing!|\n{Wow|Whoa|Incredible|Amazing}! This blog looks {exactly|just} like my old one! It's on a {completely|entirely|totally} different {topic|subject} but it has pretty much the same {layout|page layout} and design. {Excellent|Wonderful|Great|Outstanding|Superb} choice of colors!|\n{There is|There's} {definately|certainly} {a lot to|a great deal to} {know about|learn about|find out about} this {subject|topic|issue}. {I like|I love|I really like} {all the|all of the} points {you made|you've made|you have made}.|\n{You made|You've made|You have made} some {decent|good|really good} points there. I {looked|checked} {on the internet|on the web|on the net} {for more info|for more information|to find out more|to learn more|for additional information} about the issue and found {most individuals|most people} will go along with your views on {this website|this site|this web site}.|\n{Hi|Hello|Hi there|What's up}, I {log on to|check|read} your {new stuff|blogs|blog} {regularly|like every week|daily|on a regular basis}. Your {story-telling|writing|humoristic} style is {awesome|witty}, keep {doing what you're doing|up the good work|it up}!|\nI {simply|just} {could not|couldn't} {leave|depart|go away} your {site|web site|website} {prior to|before} suggesting that I {really|extremely|actually} {enjoyed|loved} {the standard|the usual} {information|info} {a person|an individual} {supply|provide} {for your|on your|in your|to your} {visitors|guests}? Is {going to|gonna} be {back|again} {frequently|regularly|incessantly|steadily|ceaselessly|often|continuously} {in order to|to} {check up on|check out|inspect|investigate cross-check} new posts|\n{I wanted|I needed|I want to|I need to} to thank you for this {great|excellent|fantastic|wonderful|good|very good} read!! I {definitely|certainly|absolutely} {enjoyed|loved} every {little bit of|bit of} it. {I have|I've got|I have got} you {bookmarked|book marked|book-marked|saved as a favorite} {to check out|to look at} new {stuff you|things you} post…|\n{Hi|Hello|Hi there|What's up}, just wanted to {mention|say|tell you}, I {enjoyed|liked|loved} this {article|post|blog post}. It was {inspiring|funny|practical|helpful}. Keep on posting!|\nI {{leave|drop|{write|create}} a {comment|leave a response}|drop a {comment|leave a response}|{comment|leave a response}} {each time|when|whenever} I {appreciate|like|especially enjoy} a {post|article} on a {site|{blog|website}|site|website} or {I have|if I have} something to {add|contribute|valuable to contribute} {to the discussion|to the conversation}. {It is|Usually it is|Usually it's|It's} {a result of|triggered by|caused by} the {passion|fire|sincerness} {communicated|displayed} in the {post|article} I {read|looked at|browsed}. And {on|after} this {post|article} CF Colors v 2.1, Post Formats Admin UI v1.3.1, and Social v2.10 : alexking.org. I {{was|was actually} moved|{was|was actually} excited} enough to {drop|{leave|drop|{write|create}}|post} a {thought|{comment|{comment|leave a response}a response}} {:-P|:)|;)|;-)|:-)} I {do have|actually do have} {{some|a few} questions|a couple of questions|2 questions} for you {if you {don't|do not|usually do not|tend not to} mind|if it's {allright|okay}}. {Is it|Could it be} {just|only|simply} me or {do|does it {seem|appear|give the impression|look|look as if|look like} like} {some|a few} of {the|these} {comments|responses|remarks} {look|appear|come across} {like they are|as if they are|like} {coming from|written by|left by} brain dead {people|visitors|folks|individuals}? :-P And, if you are {posting|writing} {on|at} {other|additional} {sites|social sites|online sites|online social sites|places}, {I'd|I would} like to {follow|keep up with} {you|{anything|everything} {new|fresh} you have to post}. {Could|Would} you {list|make a list} {all|every one|the complete urls} of {your|all your} {social|communal|community|public|shared} {pages|sites} like your {twitter feed, Facebook page or linkedin profile|linkedin profile, Facebook page or twitter feed|Facebook page, twitter feed, or linkedin profile}?|\n{Hi there|Hello}, I enjoy reading {all of|through} your {article|post|article post}. I {like|wanted} to write a little comment to support you.|\nI {always|constantly|every time} spent my half an hour to read this {blog|weblog|webpage|website|web site}'s {articles|posts|articles or reviews|content} {everyday|daily|every day|all the time} along with a {cup|mug} of coffee.|\nI {always|for all time|all the time|constantly|every time} emailed this {blog|weblog|webpage|website|web site} post page to all my {friends|associates|contacts}, {because|since|as|for the reason that} if like to read it {then|after that|next|afterward} my {friends|links|contacts} will too.|\nMy {coder|programmer|developer} is trying to {persuade|convince} me to move to .net from PHP. I have always disliked the idea because of the {expenses|costs}. But he's tryiong none the less. I've been using {Movable-type|WordPress} on {a number of|a variety of|numerous|several|various} websites for about a year and am {nervous|anxious|worried|concerned} about switching to another platform. I have heard {fantastic|very good|excellent|great|good} things about blogengine.net. Is there a way I can {transfer|import} all my wordpress {content|posts} into it? {Any kind of|Any} help would be {really|greatly} appreciated!|\n{Hello|Hi|Hello there|Hi there|Howdy|Good day}! I could have sworn I've {been to|visited} {this blog|this web site|this website|this site|your blog} before but after {browsing through|going through|looking at} {some of the|a few of the|many of the} {posts|articles} I realized it's new to me. {Anyways|Anyhow|Nonetheless|Regardless}, I'm {definitely|certainly} {happy|pleased|delighted} {I found|I discovered|I came across|I stumbled upon} it and I'll be {bookmarking|book-marking} it and checking back {frequently|regularly|often}!|\n{Terrific|Great|Wonderful} {article|work}! {This is|That is} {the type of|the kind of} {information|info} {that are meant to|that are supposed to|that should} be shared {around the|across the} {web|internet|net}. {Disgrace|Shame} on {the {seek|search} engines|Google} for {now not|not|no longer} positioning this {post|submit|publish|put up} {upper|higher}! Come on over and {talk over with|discuss with|seek advice from|visit|consult with} my {site|web site|website} . {Thank you|Thanks} =)|\nHeya {i'm|i am} for the first time here. I {came across|found} this board and I find It {truly|really} useful & it helped me out {a lot|much}. I hope to give something back and {help|aid} others like you {helped|aided} me.|\n{Hi|Hello|Hi there|Hello there|Howdy|Greetings}, {I think|I believe|I do believe|I do think|There's no doubt that} {your site|your website|your web site|your blog} {might be|may be|could be|could possibly be} having {browser|internet browser|web browser} compatibility {issues|problems}. {When I|Whenever I} {look at your|take a look at your} {website|web site|site|blog} in Safari, it looks fine {but when|however when|however, if|however, when} opening in {Internet Explorer|IE|I.E.}, {it has|it's got} some overlapping issues. {I just|I simply|I merely} wanted to {give you a|provide you with a} quick heads up! {Other than that|Apart from that|Besides that|Aside from that}, {fantastic|wonderful|great|excellent} {blog|website|site}!|\n{A person|Someone|Somebody} {necessarily|essentially} {lend a hand|help|assist} to make {seriously|critically|significantly|severely} {articles|posts} {I would|I might|I'd} state. {This is|That is} the {first|very first} time I frequented your {web page|website page} and {to this point|so far|thus far|up to now}? I {amazed|surprised} with the {research|analysis} you made to {create|make} {this actual|this particular} {post|submit|publish|put up} {incredible|amazing|extraordinary}. {Great|Wonderful|Fantastic|Magnificent|Excellent} {task|process|activity|job}!|\nHeya {i'm|i am} for {the primary|the first} time here. I {came across|found} this board and I {in finding|find|to find} It {truly|really} {useful|helpful} & it helped me out {a lot|much}. {I am hoping|I hope|I'm hoping} {to give|to offer|to provide|to present} {something|one thing} {back|again} and {help|aid} others {like you|such as you} {helped|aided} me.|\n{Hello|Hi|Hello there|Hi there|Howdy|Good day|Hey there}! {I just|I simply} {would like to|want to|wish to} {give you a|offer you a} {huge|big} thumbs up {for the|for your} {great|excellent} {info|information} {you have|you've got|you have got} {here|right here} on this post. {I will be|I'll be|I am} {coming back to|returning to} {your blog|your site|your website|your web site} for more soon.|\nI {always|all the time|every time} used to {read|study} {article|post|piece of writing|paragraph} in news papers but now as I am a user of {internet|web|net} {so|thus|therefore} from now I am using net for {articles|posts|articles or reviews|content}, thanks to web.|\nYour {way|method|means|mode} of {describing|explaining|telling} {everything|all|the whole thing} in this {article|post|piece of writing|paragraph} is {really|actually|in fact|truly|genuinely} {nice|pleasant|good|fastidious}, {all|every one} {can|be able to|be capable of} {easily|without difficulty|effortlessly|simply} {understand|know|be aware of} it, Thanks a lot.|\n{Hi|Hello} there, {I found|I discovered} your {blog|website|web site|site} {by means of|via|by the use of|by way of} Google {at the same time as|whilst|even as|while} {searching for|looking for} a {similar|comparable|related} {topic|matter|subject}, your {site|web site|website} {got here|came} up, it {looks|appears|seems|seems to be|appears to be like} {good|great}. {I have|I've} bookmarked it in my google bookmarks.\n{Hello|Hi} there, {simply|just} {turned into|became|was|become|changed into} {aware of|alert to} your {blog|weblog} {thru|through|via} Google, {and found|and located} that {it is|it's} {really|truly} informative. {I'm|I am} {gonna|going to} {watch out|be careful} for brussels. {I will|I'll} {appreciate|be grateful} {if you|should you|when you|in the event you|in case you|for those who|if you happen to} {continue|proceed} this {in future}. {A lot of|Lots of|Many|Numerous} {other folks|folks|other people|people} {will be|shall be|might be|will probably be|can be|will likely be} benefited {from your|out of your} writing. Cheers!|\n{I am|I'm} curious to find out what blog {system|platform} {you have been|you happen to be|you are|you're} {working with|utilizing|using}? I'm {experiencing|having} some {minor|small} security {problems|issues} with my latest {site|website|blog} and {I would|I'd} like to find something more {safe|risk-free|safeguarded|secure}. Do you have any {solutions|suggestions|recommendations}?|\n{I am|I'm} {extremely|really} impressed with your writing skills {and also|as well as} with the layout on your {blog|weblog}. Is this a paid theme or did you {customize|modify} it yourself? {Either way|Anyway} keep up the {nice|excellent} quality writing, {it's|it is} rare to see a {nice|great} blog like this one {these days|nowadays|today}.|\n{I am|I'm} {extremely|really} {inspired|impressed} {with your|together with your|along with your} writing {talents|skills|abilities} {and also|as {smartly|well|neatly} as} with the {layout|format|structure} {for your|on your|in your|to your} {blog|weblog}. {Is this|Is that this} a paid {subject|topic|subject matter|theme} or did you {customize|modify} it {yourself|your self}? {Either way|Anyway} {stay|keep} up the {nice|excellent} {quality|high quality} writing, {it's|it is} {rare|uncommon} {to peer|to see|to look} a {nice|great} {blog|weblog} like this one {these days|nowadays|today}..|\n{Hi|Hello}, Neat post. {There is|There's} {a problem|an issue} {with your|together with your|along with your} {site|web site|website} in {internet|web} explorer, {may|might|could|would} {check|test} this? IE {still|nonetheless} is the {marketplace|market} {leader|chief} and {a large|a good|a big|a huge} {part of|section of|component to|portion of|component of|element of} {other folks|folks|other people|people} will {leave out|omit|miss|pass over} your {great|wonderful|fantastic|magnificent|excellent} writing {due to|because of} this problem.|\n{I'm|I am} not sure where {you are|you're} getting your {info|information}, but {good|great} topic. I needs to spend some time learning {more|much more} or understanding more. Thanks for {great|wonderful|fantastic|magnificent|excellent} {information|info} I was looking for this {information|info} for my mission.|\n{Hi|Hello}, i think that i saw you visited my {blog|weblog|website|web site|site} {so|thus} i came to \"return the favor\".{I am|I'm} {trying to|attempting to} find things to {improve|enhance} my {website|site|web site}!I suppose its ok to use {some of|a few of} your ideas!!\\".





ex_parsed() ->

    [   {   <<"This is a ">>, 
            [ <<"test">>, <<"verification">>, <<"check">> ], 
            <<" of the ">>, 
            [ <<"emergency">>, <<"cfad">>, <<"tragedy">> ],
            <<" ">>, 
            [ <<"broadcast">>, <<"dispatch">>, <<"creation">> ], 
            <<" system.">> },

        [   <<"doug">> ],

        [   <<"stan">>, <<"lou">> ],

        <<"leonard">>

    ].





gen_from(Parsed) 

    when is_binary(Parsed) ->

    Parsed;





gen_from(Parsed)

    when is_list(Parsed) ->

    gen_from(sc:random_from(Parsed));





gen_from(Parsed)

    when is_tuple(Parsed) ->

    list_to_binary([ gen_from(Term) || Term <- tuple_to_list(Parsed) ]).





clean(List)

    when is_list(List) ->

    list_to_binary(sc:trim_cursor(List)).





parse_dive(Text) ->

    parse_dive(Text, [], []).





pack(Work, Stack) ->

    [ Item || Item <- [clean(lists:reverse(Work))] ++ Stack, Item =/= <<>> ].





parse_dive([], Work, Stack) ->

    list_to_tuple(lists:reverse(pack(Work, Stack)));





parse_dive("{" ++ Continue, Work, Stack) ->

    { Res, Rem } = parse_dive(Continue),

    parse_dive(Rem, [], [Res] ++ pack(Work,Stack) );





parse_dive("|" ++ Continue, Work, Stack) ->

    parse_dive(Continue, [], pack(Work,Stack) );





parse_dive("}" ++ Continue, Work, Stack) ->

    {lists:reverse(pack(Work,Stack)), Continue};





parse_dive([Letter|Continue], Work, Stack) ->

    parse_dive(Continue, [Letter]++Work, Stack).





-spec test() -> ok | error.

test() ->

    eunit:test(sc_spintax).
