
"EuniceGame"

Chapter 1 - Game-wide setup

Include Basic Screen Effects by Emily Short.

Rule for printing room description details: stop

Section 1 - Map and Looking

The Front Yard is a room.

Plainfield is west of the Front Yard. Dusty Field is west of Plainfield. South of Plainfield is Prairie. North of Plainfield is Gap in the Wood. West of Gap in the Wood is Pine Trail. North of Pine Trail is Forest Glen.

The Rocky Field is west of Dusty Field. Scrubland is south of the Dusty Field and west of Prairie.

East of the Front Yard is a room called Meadowland.  Marsh is south of Meadowland.

East of Meadowland is a room called Quaking Bog. East of the Quaking Bog is a room called Bog Heart.

South of the Front Yard is a room called Cement Patio. South of the Cement Patio is a room called Grassland. West of Cement Patio is Prairie. East of Cement Patio is Marsh. 

Understand "look [direction]" as facing.

Facing is an action applying to one visible thing.

Carry out facing:
	let the viewed item be the room noun from the location;
	if the viewed item is not a room, say "[if player is in Tree Crown] From this height you can see the far pines, mountains, grasses, and water. Eunice is waiting for you. [otherwise]You feel a vague sense of emptiness, as if you had reached the boundaries of a humble world, and take it as a sign that your exploring would be better spent in a more productive way." instead;
	try looking toward the viewed item.

[In rules about action handling, "noun" refers to the first object that the player has mentioned in his command, so if the player typed >LOOK WEST, "let the viewed item be the room noun from the location" would be processed as "let the viewed item be the room west from the location", and so on.]

[We can at need override the default behavior, if it is not going to be appropriate for the player to see the next room over. There is only sky above at any time, so...]

Instead of facing up:
	say "Above you the gray-green sky gives off only a pale light, as if just before a thunder storm.".

Instead of facing down:
	say "You see your feet ready and waiting for instructions.".
	
Understand "look toward [any adjacent room]" as looking toward. Understand "examine [any adjacent room]" as looking toward.

Looking toward is an action applying to one visible thing.

Carry out looking toward:
	say "You make out [the noun] that way."

[This design allows us to create descriptions for rooms (as seen from the outside) which will work regardless of where we're looking from. For instance:]

Instead of looking toward Dusty Field:
	say "You can make out[if player carries origami bird] an open plain with a bit of green as if the first bulbs of spring were pushing up to the light [otherwise] a barren plain with shadowy peaks in the distance.".
	
Instead of looking toward Rocky Field:
	say "[if player carries origami bird]Looking west, the wide field is bare except for a large notice board beneath the great mountains. From here you just make out the colorful squares of gratitude notes pinned on the board. [otherwise] You can make out something dark and square in the field to the west. Beyond that, towering mountains rise up dominating the scene. ".
	
Instead of looking toward Front Yard:
	say "[if player carries the flute] You can make out the remnants of a beautiful garden now that the plants have room breathe. [otherwise] The yard has piles of trash covering the sad remnants of an old garden.".
	
Instead of looking toward Plainfield:
	say "You inspect the rather unremarkable field.".

Instead of looking toward Gap in the Wood:
	say "The dark forest is as solid and consistent as a wall. Yet, as you look you can see a break in the trees where the path into the woods begins.".
	
Instead of looking toward Pine Trail:
	say "The path quickly disappears into the shadows.".

Instead of looking toward Forest Glen:
	say "The trees open into a small glen filled with wildflowers.".

Instead of looking toward Prairie:
	say "The green field stretches as far as the eye can see, so wide it gives a feeling a vertigo.".

Instead of looking toward Scrubland:
	say "You see low bushes scattered between rocks.".

Instead of looking toward Cement Patio:
	say "You see a square of cement cracked and broken with weeds pushing through in places.".
	
Instead of looking toward Grassland:
	say "[if player carries seeds]Rolling grasses carry your gaze along [otherwise] Dry grasses scrape unpleasantly before [end if]. In the distance you see a great old tree.".
	
Instead of looking toward Marsh:
	say "Reeds and cattails block most of the view.".
	
Instead of looking toward Meadowland:
	say "It is a gentle meadow though feels oddly empty right now.".
	
Instead of looking toward Quaking Bog:
	say "Moss, water, and thick marsh grasses make up the bog.".
	
Instead of looking toward the Bog Heart:
	say "You see bog plants all around beneath with wide sky. The ground quakes slightly with each footfall. Who knows what treasures lie below the deep moss...".  

Instead of looking toward the Front Porch:
	say "The porch is rotten and slanting away from the house.".
	
Instead of examining the player: say "You look different in the Eunice light. A little more weather-beaten, a little darker from the sun, a little stronger from the walking, you look like an adventurer. [line break]You look like you have grit.".

	
Section 2 - Taking and Thanking

Instead of taking some scenery: say "Sometimes you can't take it with you. This is one of those times." 

Understand "thank [someone]" as thanking. Thanking is an action applying to one thing.
Report thanking:
	if the noun is the toad, say "[if awake]He nods his wide head. And if he had a bowler hat, he would have touched the brim as a jaunty 'you're welcome'. But things aren't as they should be in Eunice.[otherwise] He lets out a terrific snore.";
	otherwise:
		say "The [noun] receives your thanks like sunlight, in this gloomy land."

[expand to all characters
if fact, make elf and troll agitated/calm or something. so that it can be easier to write script for different conversations

]

Section 3 - Conversation and Characters

A person can be asleep or awake. A person can be active or passive.

Instead of waking an awake person: say "That seems redundant."

Instead of waking an asleep person: say "It does seem like the thing to do, but how?"

Understand "talk to [someone]" as a mistake ("To talk with [noun], try to ASK [the noun] ABOUT something; TELL [noun] ABOUT something; or ANSWER something.").

[scene rules - related to conversations]

A scene can be restricted or free.

Instead of going somewhere while a restricted scene is happening:
	say "Better to stay here for the moment and find out what is going to happen next."

Instead of going nowhere while a restricted scene is happening:
	say "Better to stay here for the moment and find out what is going to happen next."

Suggestion relates things to each other. The verb to suggest means the suggestion relation.

A subject is a kind of thing. 

Understand "ask [someone] about [any subject]" as asking it about the subject. Understand "tell [someone] about [any subject]" as asking it about the subject. Understand "tell [someone] [any subject]" as asking it about the subject.

Asking it about the subject is an action applying to one thing and one visible thing.

Carry out asking it about the subject:
	if the noun is the elf, say "'Bah, [the second noun],' the elf yells, again. The elf is very yell-y. [line break]Who knew elves would be so screechy.";
		if the noun is the toad, say "'Hmm, [the second noun],' says [the noun]. ";
			if the noun is the group chatting, say "A few people begin to chat about [the second noun] while others do somersaults.";
				if the noun is the troll, say "'[the second noun]' says the Troll, 'hhmmmm'";
					if the noun is the snake, say "'SSSSssssssss' saysss the ssnake."

Instead of thinking:
	say "You contemplate the strange land where you find yourself."

Quest is a subject. Treasure is a subject. Understand "treasures" as treasure. Hope is a subject. Stone is a subject. Eunice is a subject. Jokes are a subject. Understand "joke" as jokes.



Chapter 2 - Necessary Items

The flute is a thing. The description is "The little flute is simply carved from
a piece of bamboo. In the right moment it will play the SONG of ORDER.".
The flute is nowhere.

An origami bird is a thing. The description is "An expertly folded paper bird, the GIFT of GRATITUDE. The colors seem to change slightly in the Eunice light, but you think its blue.". The origami bird is nowhere.

The house key is a thing. The description of the house key is "One of the five treasures: the KEY of APPRECIATION! It's a house key. The key is heavy brass and old fashioned. It rests solidly in your hand." The house key is nowhere. 

A stone of flexibility is a thing. The description of the stone of flexibility is "The STONE of FLEXIBILITY is gray with little black specs. At this moment, it is [one of]just a round stone[or]long and narrow like a stick[or]an oval rock[or]a little spoon[or]squarish[at random].". The stone of flexibility is nowhere. 

Some seeds are a thing. The description is "Some little brown SEEDS of MINDFULNESS that came from the apple you ate. [paragraph break] You remember holding it with full awareness of the weight in your hand, appreciating the smell and colors of the fruit. Imagine what it took for this to get to your hands: sunshine, water, warmth, and time. Taking a first bite and for a moment holding the tart sweet fruit in your mouth. Chewing, you notice it fully as if it were your first time ever eating an apple. [line break]Very slowly chewing, appreciating the change in texture and taste, you finish the apple feeling completely sated." Some seeds are nowhere.

An iridescent fly is a kind of a thing. An iridescent fly is edible. The description
of the iridescent fly is "Reflecting luminous colors, it is dead and rather large, about the size of a cracker.". There is one iridescent fly in Snack
Limbo. 

The waterwell is container. "There is a clear pool of water near the toad's forelimb." The description of the waterwell is "Very clear and very deep..." The waterwell is nowhere. Understand "pool", "well", "water" as waterwell.

The tangle of tangle of vines are a thing. The description of the tangle of vines is "The tangle of vines form leafy green steps north to the front porch". The tangle of vines are nowhere.

Chapter 3 - Front Yard

The description of the Front Yard is "You are standing in a yard just south of an old, wooden house. At one time it was a dearly loved home, a place of comfort and laughter. Now it stands silent, with its windows boarded up. Around you [if player has the flute]the garden is beginning to return to life. The rose bush has tiny pink buds, preparing to become flowers soon. [otherwise]is a neglected field that was once a beautiful garden. Where once a caring hand tended the garden, trash and debris crowd the plants. It could use some tending now, you think."

The Front Yard contains bushes and plants. The bushes and plants are scenery. Understand "plants", "rose", "lavender", and "garden", "bush" as bushes. The description of bushes is "You look closer and recognize ragged lavender and a tired rose."

Trash is scenery in the front yard. Understand "rotten wood" and "metal" and "twisted metal" and "old tires" and "junk" as trash. The description of trash is "Rotten wood, twisted metal, and old tires lie abandoned in the yard." 

Section 1 - Cleaning up

[Action for cleaning/clearing/TENDING the garden]
Understand "tend [something]" as tending it. Tending it is an action applying to one thing. Check tending it: if the noun is not the bushes, say "There is no clear way to tend it exactly." instead. Report tending it: say  "It's a huge job, but you organize some of the trash into piles and clear some space around the plants. It looks much better now!";
	say "Soothing lavender sways in the breeze, now that the garden has been tended. Wooly thyme and creeping rosemary cover the ground. The rose bush is budding and will flower soon. [if the flute is nowhere][paragraph break]You find a little flute among the trash like a gift from the garden. You decide to keep it for later.[otherwise]There aren't any more musical instruments to be found, but a faint perfume scents the air. ";
	if the flute is nowhere, now player carries flute.
	
[Action for flute]
Understand "play [something]" as playing it. Playing it is an action applying to one thing. 

Check playing it: if the noun is not the flute, say "Playing only works for a musical instrument." instead. 
	
Carry out playing it: if the flute is not carried by the player, silently try taking the flute;
		
Report playing it:
	say "You place the little flute to your lips and blow a few experimental notes. The sound is soft and a little meloncholy."; 
	if the steamer trunk is in the Old House: 
		say "[if the snake is in the Front Yard]The snake's little geometric head pops up in the open window, enjoying your playing for a bit, before going back to napping in the front yard.[otherwise]The snake waves its head side to side as you play, turning jeweled eyes to you, and flicking his delicate tongue. Then he wiggles from off the steamer trunk and through the open window out into the perfumed garden.";
		now the snake is in the Front Yard.

The tattered note is a thing in the Front Yard. "A tattered note flutters, caught on a rusted nail." The note is fixed in place. The description is "The note reads: [paragraph break]Welcome to Eunice. It is a shadow of its former glory. [paragraph break]Whatever the reasons that brought you here,[line break]that Eunice needs you is clear. [line break]There is a quest desperately requiring aid.[line break]Remember, you will get as much out as the efforts you made.[paragraph break]Type simple commands,[line break]such as look west, inventory, or read note.[line break]Keep an eye out for changes in Eunice lands,[line break]or gifts that may come from what you wrote." 

Instead of doing something other than examining to the note, say "It's a tired, tattered piece of paper not good for anything but reading."

Section 2 - Flowerpot

The cracked flowerpot is south of the Front Porch and north of the Front Yard. The cracked flowerpot is a closed door. It is lockable and locked. Some seeds unlocks the cracked flowerpot. The description of the cracked flowerpot is "[if tangle of vines are nowhere]It is dusty, cracked and mostly filled with dirt. It rests against what used to be the stairs north to the front porch. Those stairs are now rotten beyond all use. [otherwise]The old flower pot is holding a large plant of tangle of vines that form the front porch stairs."

Understand "plant [something]" as planting it. Planting it is an action applying to one thing. Check planting it: 
	if the noun is not some seeds, say "You considered it but the [noun] wont grow here." instead;
		if player is not in Front Yard, say "The seeds are waiting for a different purpose." instead. 

Report planting it: say "You gently plant the seeds in the cracked flowerpot. [line break] Quickly, tendrils sprout in the dirt. They grow into strong tangle of vines, twisting and turning around each other until they form stairs north to the porch."; 
	now the cracked flowerpot is unlocked;
	now some seeds are nowhere;
	now tangle of vines are in the front yard.
	
Instead of going north in Front Yard when cracked flowerpot is locked: say "You can't walk up the stairs. They have rotted beyond all use.".

Before going north in Front Yard when cracked flowerpot is unlocked: say "You walk gingerly up the green vine stairs.";
try silently opening the cracked flowerpot.

Chapter 8 - Plainfield

Plainfield has the description "A broad field or plain with nothing particular distinguishing about it."

Chapter 9 - Gap in the Wood

Gap in the wood has the description "The dark forest is a solid wall. Yet, as you look you can see a break in the trees where a path leads west deeper into the wood or south to an open field.".

Before going west in Gap in the Wood, say "[paragraph break]You walk on with determination toward the light up ahead.".

Instead of going north in Gap in the Wood:
	say "The forbidding trees block your way.".
	
Instead of going east in Gap in the Wood:
	say "The forbidding trees block your way.".

Chapter 10 - Pine Trail

Pine Trail has the description "Your footfalls are silent in the thick carpet of pine needles. [line break]Sunlight quickly disappears, unable to penetrate through the thick branches. The path curves here and leads north or to the east."

Before going north in Pine Trail, say "[paragraph break]Like the brave explorers of old, you move through the quiet dimness.".

Chapter 11 - Forest Glen

Forest Glen has the description "A ray of sunshine cuts through the curtain of trees onto the path before you. The dense wood opens to a small glen of [if group chatting are nowhere]prickly grass[otherwise]soft grass and wildflowers. The sun shines strongly in the glen creating a little circle of bright against the dark forest." 

The group chatting are people. The group chatting are nowhere. The description is "[one of]The people who were statues are now enjoying the warm sun[or]The group has created a happy little party[or]People are chatting and sipping tea[or]Some people unfolded blankets and are stretched out in the sun[or]A few have organized a drum circle[or]Moving easily though poses that could be yoga or tai chi, some people go through a routine together[or]Some are sitting together sipping tea on the soft grass, while others continue a coordinated poses of graceful stretches[at random]."

Wildflowers are scenery. Wildflowers are nowhere. The description of wildflowers is "tiny and colorful, they smell amazing."

Section 1 - Statues stretching

carved statues are things in the Forest Glen. "A dozen carved statues are placed around the little glen. They are worn and covered in lichen, bird droppings, and fallen leaves." The carved statues have the description "The sculptures are all of people hunched over and staring at a small rectangles in their hands. Some are curled over themselves in office chairs. 

Looking at them life-like and lifeless, frozen in various pretzel positions, makes you want to loosen your limbs."

Instead of rubbing the statues, say "You brush off some dirt and leaves. They are very realisticaly carved. Each one looks like it could be a real person captured in stone.". 
	
Understand "stretch" as stretching. Stretching is an action applying to nothing. Understand "dance" as stretching. Understand "loosen limbs" as stretching.

Check stretching: 
	if player is in Forest Glen:
		say "Lift your shoulders up to your ears. Feel the muscles tense. [line break]Then release. [paragraph break]Stretch your shoulders back as far as is comfortable, pushing your sternum forward and take a deep breath. [line break]Then release. [paragraph break]Raise your arms over your head and feel your sides stretch. [line break]Then release. [paragraph break]...[paragraph break]";
		wait for any key;
		say "[if the stone of flexibility is nowhere]The stone statues are cracking.The figures come to life. They brush the dust and rocks off of themselves. Everyone is hugging and laughing and chattering. 'Hello,' they say, 'it's been so long! Good to see you,' they celebrate. They notice you and bring you into the circle. [line break]Many hands pat you on the back, thanking you. [paragraph break]One gives you a little stone that broke off from his elbow.[paragraph break] [otherwise]The happy group notices you stretching and jumps to join in. After a smiling round of calisthenics, the group noisily wishes you, 'Good luck on your quest to free hope in Eunice!'. Then they go back to their own stretches or sipping tea, and you remember your mission.";
		now the player carries the stone of flexibility;
		now the carved statues are nowhere;
		now the group chatting is in the Forest Glen;
		now wildflowers are in the Forest Glen;
	otherwise:
		say "Lift your shoulders up to your ears. Feel the muscles tense. [line break]Then release. [paragraph break]Stretch your shoulders back as far as is comfortable, pushing your sternum forward and take a deep breath. [line break]Then release. [paragraph break]Raise your arms over your head and feel your sides stretch. [line break]Then release. [paragraph break]...[paragraph break] Ahhh, that felt good."

Section 2 - Party Convo
	
Instead of asking the group about the subject hope:
	say "'What happened to Hope?' you venture to ask. [paragraph break]The party falls silent for a surprising moment. Then someone says in a half whisper, 'Only the troll knows.' The group won't talk anymore about that."	

Instead of asking the group about the subject quest:
	say "They congregate around you in excitement, 'a quest sounds wonderful and you already have the stone, so clearly doing pretty well.'".

Instead of asking the group about the subject treasure:
	say "'There are a bunch, four...no, five' the group is shouting out answers as they try to remember. [line break]Finally, there is some intense whispering and they organize the list: a song of order, a key of deep appreciation, some seeds of mindfulness, a gift of gratitude, and a stone of flexiblity. 'You already have the stone at least!'".

Instead of asking the group about the subject stone:
	say "'This is a strange stone,' you observe, looking at it. Before your eyes it changes momentarily into a donut shape, then back to a circle. [line break]'It's our gift to you, and it might be just the perfect thing,' one of the group replies. Someone else adds, 'it is one of those treasures needed in the quest to free Hope.".
	
Instead of asking the group about the subject Eunice:
	say "The group has a lot to say about Eunice. [paragraph break]'Our beautiful, beauitful home...though it looks just awful now.' [line break]'That is only because Hope is trapped and we were frozen, but now we can move.' A few of them do headstands in the grass."

Chapter 12 - Dusty Field

Dusty Field has the description "The open field[if player carries origami bird] has a hint of green under the dust and grim as if the imposing mountains were pushing up spring with their toes. [otherwise] is a barren, dusty place."

Instead of going north in Dusty field:
	say "The field ends abruptly at the edge of a pinewood. Tall trees block your path.".

Chapter 13 - Scrubland

Scrubland has the description "The field here has low bushes scattered between rocks, and not much else."

Instead of going west in Scrubland:
	say "A mass of sharp thistles block your path, ouch!" 

Instead of going south in Scrubland:
	say "A mass of sharp thistles bushes block your path, ouch!"

Chapter 14 - Rocky Field

Section 1 - some rules
[Rule for managing room descriptions, particularly descriptions of the notice board, from ex #355 A simple way to allow objects in certain places to be described in the room description body text rather than in paragraphs following the room description]
		
Before listing nondescript items of Rocky Field:
	if the pinned notes are marked for listing:
		now the pinned notes are not marked for listing;
		if the pad of paper is marked for listing:
			now the pad of paper is not marked for listing.
			
Instead of going west in Rocky Field:
	say "You walk on to explore west of the notice board in the waving grass beneath rugged mountains. [line break]Suddenly you see what the shadow of the mountains had hidden: the land falls away in a steep cliff so deep that the bottom is hidden from view. You scramble back from the edge. There is no way to go further west. With a pounding heart, you turn back to the notice board.".

Instead of going south in Rocky Field:
	say "A mass of sharp thistles block your path, ouch!".
	
Instead of going north in Rocky Field:
	say "The rocky field ends at the edge of a pinewood. Tall trees block your path."

Section 2 - setting up the room

Rocky Field has the description "You are in a broad, rocky field. Boulders are scattered haphazardly all around. There is a large notice board clearly placed with more intention than the rocks[if player carries Origami bird] The field looks slightly greener than before, as if spring is coming soon [end if]. [paragraph break]Farther west, tall mountains loom over you, threatening to overwhelm the scene." 

The notice board is a supporter and scenery in the Rocky Field. The description of the notice board is "A large public notice board stands in the middle of the wide field. You wonder why the builder decided to put it out here far from any road or town. [Paragraph break]Clearly some people came here, because there are colorful notes pinned to the board, as well as a large pad of paper.[line break] Carved into the top of the board are the words: [line break]Simply type 'Today I am grateful for {your gratitude} ' on the pad. [line break] Peace, serenity, and groundedness are yours to be had."

A pad of paper, pinned notes, and boulders are scenery in the Rocky Field. 

The description of a pad of paper is "[if gratitude is fresh] The pad of paper is blank, except for a title shimmering in gold leaf 'Gratitude List: ' The paper is inviting, ready to be typed in. [otherwise] You can read your gratitude list under the golden letters if you wish."

The description of the pinned notes is "You pick one of the notes to read: [one of]'Today I am grateful for a warm cup of tea, house elves, catching up with an old friend'[or]'Today I am grateful for my children, a morning commute free from trolls and dragons, sunny weather'[or]'Today I am grateful for snuggling kittens, rollercoasters, chocolate'[or]'Today I am grateful for smiles from strangers, dragon gold, my job'[or]'Today I am grateful for a first date, pizza, my faviorite show'[or]'Today I am grateful for new boots, shiny armour, next jousting competition'[or]'Today I am grateful for compliments from birds, fresh fruit, hearing my favourite song'[or]'Today I am grateful for picnics, loving family, silly jokes.' [in random order]."

Understand "note" as notes.

The description of boulders is "Heavy and oblong with weathered surfaces, they have been here a long time."

Understand "boulder", "rock", and "rocks" as boulders.
	
Section 3 - setting up writing in gratitude pad

[Writing Gratitude notes - calling the file 'gratitude' instead of jotter as in example. First setting up the file]

A gratitude is a kind of a thing. A gratitude has an external file called the text file. A gratitude can be fresh or used. A gratitude is usually fresh. A gratitude has a text called the heading.

The currently erased gratitude is an object that varies. 

To erase (pad - a gratitude): 
	now the currently erased gratitude is the pad;
	write "Gratitude List: [paragraph break]" to the text file of the pad;
	now the pad is fresh.
	
To write in (pad - a gratitude):
	append "[topic understood][line break]" to the text file of the pad;
	now the pad is used.
	
To read (pad - a gratitude):
	say "You read: [paragraph break][text of the text file of the pad]".
	
When play begins:
	repeat with pad running through gratitudes:
		erase the pad.
		
[Then setting up rules for reading writing and erasing]

Instead of examining a used gratitude (called the pad):
	read the pad.
	
Instead of examining a fresh gratitude (called the pad):
	say "The pad of paper is blank, except for a title shimmering in gold leaf 'Gratitude List ' The paper is inviting, ready to be typed in."
	
Understand "Today I am grateful for [text] on [something]" as writing it in. Understand "Today I am grateful for [text]" as writing it in. Writing it in is an action applying to a topic and one thing. Rule for supplying a missing second noun while writing: if player is in Rocky Field, now the second noun is the pad; otherwise say "You are too far from a gratitude list to do that."


Check writing it in:
	if the second noun is not a gratitude, say "It would be better to write somewhere else."
	instead.
	
Carry out writing it in:
	if the player is in Rocky Field, write in the second noun; otherwise say "There are no writing materials here."
	

Report writing it in:
	say "You write '[the topic understood]' on [the second noun].";
	say "[if origami bird is nowhere]When you write your gratitude note, a tiny folded paper bird flutters down from above you and lands noiselessly in your hand. [line break]The field almost looks a little greener. [line break]The colorful gratitude notes shine and twinkle on the board. [otherwise]When you add your gratitude note, you notice the other notes pinned on the board, written by people or animals before you. It almost seems like there are more than before. The colorful paper adding a trendy, party atmosphere to the sign.";
	if the Origami bird is nowhere, now the player carries Origami bird.


Understand "erase [something]" as erasing. Erasing is an action applying to one carried thing.

Check erasing:
	if the noun is not a gratitude, say "It's hard to see how." instead.
	
Carry out erasing:
	erase the noun.
	
Report erasing:
	say "You erase the gratitude notes in [the noun]."
	
[putting the general purpose implementation to use]
A gratitude called pad of paper is in the Rocky Field. The file of Player's Gratitudes is called "Gratitudes". The text file of pad of paper is the file of Player's Gratitudes. The heading of pad of paper is "Things I am Grateful For:"


Section 4 - Origami Bird

Instead of taking the Origami bird:
	if the Origami bird is nowhere:
		now player carries origami bird;
		say "You gingerly cradle the almost weight-less paper bird and then tuck it away in a safe place.";
	otherwise:
		say 	"You can only hold one of these delicate creations at a time so you leave the new bird undisturbed in the field.".



Chapter 15 - Meadowland

Meadowland has the description "The wind blows gently across the rolling meadow. This would be a sweet place to sit for an afternoon in a hammock and listen to the birds sing, except that there is no hammock and no birds singing."

Instead of going north in Meadowland:
	say "The meadow ends abruptly at the edge of a pinewood. Tall trees block your path.".
	
Chapter 16 - Quaking Bog

Quaking Bog has the description "The air smells of mud and there are tiny pools of water between the thick moss at your feet. [line break]Nearby is a dented park sign, titled 'Quaking Bog Rules and Regulations'.".

Every turn when player is in the Quaking Bog:
	if toad is asleep, say "You hear a muffled 'ccrroOOAAAaakk' off to the east.".

Bog moss is scenery in the Quaking Bog. "The moss is springy yet thick, and jiggles slightly with every movement.". Understand "pool", "pools", "water" and "bog" as bog moss.

Nature is scenery in the Quaking bog.

A dented sign is scenery in the Quaking Bog. The dented sign has the description "Quaking Bog Instructions and Rules:
[line break]- Swimming in the bog is allowed and impossible 
[line break]- Look out for bog animals, they like to be noticed 
[line break]- Take time to Appreciate Nature"  

Understand "park sign", "rules" and "regulations" as dented sign.

Instead of jumping: say "You make a little jump and the ground rolls and shakes! It is amazing, but you stop quickly - afraid of failling through the moss trampoline."

[Creating SWIM action]
Understand "swim in [something]" as swimming in it. Swimming in it is an action applying to one thing. Check swimming in it: if the noun is not bog, say "Swimming is only allowed in the Quaking Bog." instead. 

Report swimming in it: say "You bend down and lie in the damp, waving your limbs in a vague approximation of swimming while the bog holds you above the deep pool. A few inches of water collect around you. After trying this for a little while, you have gotten rather muddy. [line break]Refreshing!".

Instead of going north in Quaking bog:
	say "The bog ends abruptly at the edge of a pinewood. Tall trees block your path."
	
Instead of going south in Quaking bog: say "The thick moss dissolves further south into a dark pool. There is no way further."

Section 1 - Appreciate Nature

[
Creating APPRECIATE NATURE action with the enter to get more text function
]

Understand "appreciate [something]" as appreciating it. Appreciating it is an action applying to one thing. 

Check appreciating it: if the noun is not nature, say "You look closely and seek to recognize the full worth of the [noun]." instead. 
	
Report appreciating it:
	let chosen iridescent fly be a random iridescent fly in Limbo;
	if chosen iridescent fly is nothing:
		say "You look around and notice that everywhere around you is full of living, growing things. The air smells green and rich. [line break]A sparkle catches your eye. A single dew drop balances on the edge of a curved grass leaf. Slowly it grows in fullness, glinting like a little star. The weight pulls the thin grass down, down until it drops silently into the watery green at your feet. [paragraph break]You take a deep breath. Breathe in and feel the breath fill from your belly to your ribs to your collarbones. [line break]Exhale; the grass flutters from the wind of your breath. In that moment of stillness, a great kaleidoscope of butterflies flutters up and swoops away. [paragraph break]You feel happier, more relaxed, and ready to continue your exploration. [line break]You think, 'I will try practicing appreciating nature again the next time that I am outside.'";
	otherwise:
		move the chosen iridescent fly to the player;
		say "You look around and notice that everywhere around you is full of living, growing things. Dragonflies and butterflies and plain flies swoop between moss and grasses. [paragraph break]...[paragraph break]";
		wait for any key;
		say "Long-legged shorebirds poke around in the mud. The air smells green and rich. A sparkle catches your eye. A single dew drop balances on the edge of a curved grass leaf. Slowly it grows in fullness, glinting like a little star. The weight pulls the thin grass down, down until it drops silently into the watery green at your feet.[paragraph break]...[paragraph break]";
		wait for any key;
		say "You take a deep breath. Breathe in and feel the breath fill from your belly to your ribs to your collarbones. [line break]Exhale; the grass flutters from the wind of your breath. You feel happier, more relaxed, and ready to continue your exploration.[paragraph break]...[paragraph break]";
		wait for any key;
		 say "At the conclusion of your appreciation, an iridescent fly lying nearby catches your eye. It is colorful and shimmering, vaguely like sugercoated hard candy. [line break]Odd, but you keep it for later.".

[then need to write something for the player to eat the fly and what it would say.]

Instead of eating iridescent fly: say "not really your cup of tea, or choice of snack.".

Chapter 17 - Bog Heart

section 1 - set the room

[improve bog somehow once the scene is completed]

Bog Heart has the description "The ground quakes slightly with each footfall, in a pleasant undulating manner.  You are walking on water - or above it - on many layers of moss that have grown over to form a living raft on the surface of the bog. "

The lily is a supporter and scenery in the Bog Heart. "Looks like a comfortable bed, for a toad.". Understand "moss", "bed", "toad bed", "pillows", "lilypad", "lily pad", and "toad pillows" as lily.

The toad is an asleep person in Bog Heart. "[if asleep]A toad is sleeping in the moss, as if he was nestled among many overstuffed pillows. [otherwise]The large green toad is lounging on the moss, humming softly to himself." The description of the toad is "The toad is large and green and frowning. [if asleep]His protruding eyes are closed and he makes a loud 'ccrroOOAAAaakk' noise every so often. He is snoring![otherwise]He is looking at you with calm interest, like some bemused zoologist, curious to see what you will do next."

Every turn when player is in the Bog Heart:
	if toad is asleep, say "'ccrroOOAAAaakk'.".
	
Understand "frog", "sleeping frog", and "sleeping toad" as toad.

Instead of going north in Bog Heart: say "The thick moss dissolves further north into a dark pool. There is no way further."

Instead of going south in Bog Heart: say "The thick moss dissolves further south into a dark pool. There is no way further."

Instead of going east in Bog Heart: say "The thick moss dissolves further east into a dark pool. There is no way further."

Toad Conversation is a restricted scene. Toad Conversation begins when toad is awake. Toad Conversation ends when the number of filled rows in the Table of Conversation is 0. Sphinx is a restricted scene. Sphinx begins when Toad Conversation ends. Sphinx ends when player carries the house key. 
[
this might not be the best ending, might need something clearer, since player can drop the house key
]

When Toad Conversation ends, say "The toad looks at you with eagerness. It is a hopeless eagerness, since Hope is lost in Eunice."


section 2 - toad waking and Toad Conversation Scene

Instead of asking toad about something when toad is asleep: say "The toad stirs. His left eye opens a fraction of a sixteenth of an inch, then closes again. He snores.".

Instead of telling toad about something when toad is asleep: say "The toad stirs. His left eye opens a fraction of a sixteenth of an inch, then closes again. He snores.".

Instead of kissing toad when toad is asleep: say "You place your lips on the toad's cool skin, in your best guess of where his cheek could be, and give a kiss. [paragraph break]The toad stirs. [line break]His right eye opens a fraction of a sixteenth of an inch, and closes again.  He spits just the tiniest bit, and then indulges in a terrific snore.".
Instead of kissing toad when toad is awake: say "'No, thank you!' he scoots quickly out of the way of your approaching lips, 'I don't want to turn into some nasty prince.'".

Instead of giving iridescent fly to asleep person:
	now the second noun is awake;
	now the noun is in Snack Limbo;
	say "You hold the iridescent fly in front of you. With perfect instinct, and eyes still closed, the toad's sticky tongue shoots out and lifts the fly from your palm. [line break]The toad chews, snorts, and finally stirs. He fixes his large bulbous eyes on you." 


[FROM PINE 2 EXAMPLE]

Table of Conversation
topic	reply	quip
"Eunice/hope/advice/help"	"'An iridescent fly is worth some advice' the toad admits."	"'An iridescent fly is worth some advice,' the toad licks his lips. 'You can ask me about what treasures you would need to restore Eunice to glory...if you are into that sort of thing.'"
"Eunice/treasures/treasure/advice"	"'I seek to free Hope from its cage and restore Eunice to its glory.' you proclaim, 'what treasures do I need?' [paragraph break]'Glad to see you aren't off to kill some terrible princess and romance a dragon horde, or whatever the kids do these days,' the toad replies. [paragraph break]'Five treasures are required to free Hope from its cage: a SONG of ORDER, a KEY of deep APPRECIATION, some SEEDS of MINDFULNESS, a GIFT of GRATITUDE, and a STONE of FLEXIBILITY.' he announces in a self-satisfied manner, snuggling his rump deeper into the moss."	"'The toad clears his throat with a croak, then says, 'If you want to help Eunice return to glory, then you will need five treasures to free Hope from its cage: a SONG of ORDER, a KEY of deep APPRECIATION, some SEEDS of MINDFULNESS, a GIFT of GRATITUDE, and a STONE of FLEXIBILITY. Bet you would like to know how to get that key?' he teases, snuggling his rump deeper into the moss."
"key"	"'About that key of appreciation,' you say, shifting your weight from one foot to the other, 'How would I find it?' [paragraph break]The toad smiles, 'You have already earned it and are so, so close; practically on top of it. But good things come to those who work, I always say. If you answer my riddle, then I will tell you how to get the KEY of APPRECIATION.' [paragraph break]You take try to clear your mind and prepare for his riddle."	"'I dont know all the details of course, I'm a toad not an encyclopedia.' he replies, 'You have already earned the key of appreciation, but good things come to those who work, I often say, so if you answer my riddle, then I will tell you how to get the KEY of APPRECIATION.' [paragraph break]You take a moment to clear your mind and prepare for his riddle."
"riddle"	"The toad gleefully recites this riddle: [paragraph break]'Without weapon or tool I can cut through stone, I have a form like stone of my own, Then heat things up and into the air I have flown. I am found everywhere, even inside you, Yet often when you try to hold me in your hands I slip right through. What am I?'"	"'The toad is too caught up in the excitement of a riddle to pay any attention to anything else for long. He recites: 'Without weapon or tool I can cut through stone, I have a form like stone of my own, Then heat things up and into the air I have flown. I am found everywhere, even inside you, Yet often when you try to hold me in your hands I slip right through. What am I?'"

Instead of asking an awake toad about a topic listed in the Table of Conversation:
	now toad is passive;
	say "[reply entry][paragraph break]";
	blank out the whole row.

Instead of telling an awake toad about a topic listed in the Table of Conversation:
	now toad is passive;
	say "[reply entry][paragraph break]";
	blank out the whole row.
[
The "now toad is passive" line prevents him from making any conversation of his own on a turn when we've spoken to him. This keeps the conversation from progressing too quickly.
]

Every turn during Toad Conversation:
	if Toad is active:
		repeat through Table of Conversation:
			say "[quip entry][paragraph break]";
			blank out the whole row;
			make no decision.

[After we've generated any spontaneous conversation, we return toad regular active state.]

Every turn: now Toad is active.

section 3 - Sphinx Scene toad riddle and answer 

After answering the toad that "water":
	now the waterwell is in Bog Heart;
	say "'The answer is water!' you jump up in excitement and feel the deep waters rolling below your feet. [paragraph break]'Correct,' the toad says. [line break]He shifts slightly and near his left forelimb you see a narrow deep well of crystal clear water, 'Search the water deeply...'" 

Instead of searching the waterwell for the first time: say "You peer into the crystal clear water for a moment seeing your reflection staring curiously back at you. Then its gone and far below you think you see something down there, so you reach in. [line break]The water is cool against your hand. This is just the beginning."
	
Instead of searching the waterwell for the second time:
	say "Past the slime and the mud of the bog, past any worries and judgements about whether you are doing enough or playing the game well, you go. [line break]Something slimy flits by, maybe a fish?[paragraph break]You are now in the bog up to your elbow.".

Instead of searching the waterwell for third time:
	say "You crouch down to reach further still. The water is still, like a deep calmness in your own core. Then the tips of your fingers brush against something solid.[paragraph break]You are now in the bog up to your shoulder.".

Instead of searching the waterwell for fourth time:
	now the player carries the house key;
	say "Straining, you stretch further. Your face near the surface of the thick bog. Finally you grab something solid! Pulling it up to the surface, you see it is a small metal box. Inside is a heavy key. You keep the key for later.".

Instead of searching the waterwell for more than four times:
	say "You peer into the cool clear water and feel peaceful."
	
Instead of asking an awake toad about the subject hope:
		say "'How can Hope be caged anyway?' you ask.[paragraph break]The Toad's eyes became unfocused and he speaks in a strange deep tone: 'A dark cloud descended, laughter was frozen, appreciation asleep, mindfulness had no roots, gratitude was unwritten, and music left the garden.' then as if he remembered you were there, he frowned again, 'Only the Troll really knows, besides haven't you heard of magical realism?'";
		
Instead of asking an awake toad about the subject quest:
	say "'I have taken on the quest to free Hope from its cage!' you proclaim. [paragraph break]'Well, good for you. Better get on with it then!' he responds." 
	
Instead of asking an awake toad about the subject stone:
	say "'A stone?' he asks, as if he didnt hear you right, 'there aren't many stones in the bog.'"
	
Instead of asking an awake toad about the subject Eunice:
	say "'Can you tell me more about this place?' you inquire. [paragraph break]'The iridescent flies are quite good,' is the Toad's only reply."

Instead of giving an iridescent fly to an awake toad:
	now the noun is in Snack Limbo;
	say "You hold the iridescent fly in front of you. [line break]The toad's sticky tongue shoots out and lifts the fly from your palm. The toad chews and fixes his large bulbous eyes on you as if he can see you to your heart. [line break]'Thank you' he says." 

Chapter 18 - Cement Patio

 Cement Patio has the description "The sun feels slightly warmer here but it is not exactly comfortable. The patio is bare except for a few weeds [if player carries seeds]growing in the cracked cement. A few of the scraggly plants have grown larger, stronger. [otherwise]struggling to grow in the cracked cement.".

Slab is scenery in Cement Patio. The description is "The cracked concrete is uncomfortably warm in the sun.". Understand "patio" and "cement" as slab.

Weeds are scenery in the Cement Patio. The description of weeds is "These are tough plants to survive and grow with so little to support them.".

Instead of pulling weeds, say "They worked so hard to grow here that you figure it is better to leave them alone.".

Chapter 19 - Grassland

Section 1 - setting up the room

Grassland has the description "[if player carries seeds]Wild oat, foxtail, ryegrass, and buffalo grass make up an ocean of green rolling around you. [otherwise]Dry rustling grasses surround you. [end if]The only thing breaking the continuity is a huge and gnarled tree, framed dark against the wide sky.".

Grasses are scenery in Grassland. The grasses have the description "All different sorts, some you recognize and some altogether unfamiliar. The grasses keep growing.".

A climbable tree is a kind of a door. A climbable tree is usually open. A climbable tree is seldom openable. 

The solitary tree is a climbable tree. The solitary tree has the description "The tree is dark against the gray-green of the sky and [if player carries seeds]many little leaves have grown. [otherwise]mostly bare, with only a few yellow leaves. [end if]The trunk is thick and twisted. Low branches create a wide crown on the horizon."

Before listing nondescript items of Grassland:
	if the solitary tree is marked for listing:
		now the solitary tree is not marked for listing.
		
Instead of going west in Grassland:
	say "A mass of sharp thistles block your path, ouch!"
	
Instead of going south in Grassland:
	say "You start to wander south, but without the tree as a signpost you would easily become lost in ever-shifting, waving grasses. If you were lost, hope would never return to Eunice. Thankfully, you turn back.".
	
Instead of going east in Grassland:
	say "You start to wander east, but without the tree as a signpost you would easily become lost in ever-shifting, waving grasses. If you were lost, hope would never return to Eunice. Thankfully, you turn back.".

Section 2 - Tree Crown

The solitary tree is above the Grassland and below the Tree Crown. There is a yellow apple in the Tree Crown. The yellow apple is edible. The description of the apple is "It is a small yellow apple. As you look closer, you notice shades of reds and browns and greens on the skin in a collection of all the colors of fall. Your mouth begins to water.".

The description of Tree Crown is "The wind blows strongly this high up and you grasp a branch for stability. [if player carries seeds]The new leaves create a haven from the wind at least. [otherwise]There are only a few leaves on the dark boughs[end if][if yellow apple is in Tree Crown] The little apple hangs on by a delicate twig which looks ready to snap at any moment.".

Instead of climbing the solitary tree:
	say "[if player is in Tree Crown]Climbing down easily, you move from one thick branch to the next until your feet rest on solid ground.[otherwise if player is in Grassland]You hook your arm around a low branch and hoist yourself up. From there its an easy climb to the top with the wide horizontal branches forming an rough ladder.[end if][if player is in Grassland and apple is in Tree Crown][line break]You aren't sure what you are looking for, until you see the small yellow apple hanging on a branch near your hand.[end if]"; 
	try entering the noun. 
	 	
Understand "climb down [something]" as a mistake ("To climb up, down, or all around in Eunice, try CLIMB [the noun]").
	
Before listing nondescript items of Tree Crown:
	if the solitary tree is marked for listing:
		now the solitary tree is not marked for listing;
		if the apple is marked for listing:
			now the apple is not marked for listing.

After eating apple:
	say "With full awareness of your hand moving toward your mouth, you appreciate the smell and colors of the fruit. Imagine what it took for this to get to your hands: sunshine, water, warmth, and time. You take a first bite and for a moment hold the tart sweet fruit in your mouth. As you chew, you notice it fully as if it were your first time ever eating an apple. Very slowly you chew, appreciating the change in texture and the nourishment. You continue until you finish the apple and feel completely sated.";
	if seeds are nowhere, now player carries seeds;
	say "A few brown seeds are all that is left. You keep them as a memory. [paragraph break] Look at the seeds again anytime you want to remember mindfull eating".

Chapter 20 - Prairie

Prairie has the description "You are walking through a wild prairie land with thick grasses that reach up to your knees at times.".

Instead of going south in Prairie:
	say "You start to wander south, but without a way to navigate you would easily become lost in ever-shifting, waving grasses. If you were lost, hope would never return to Eunice. Thankfully, you turn back.".

Chapter 21 - Marsh

Marsh has the description "Mud squelches beneath your feet. There is a light fragrance of rotting plants. Flies are buzzing in the air. To the northeast you see something shimmering, like drops of water in the sun".

Instead of going east in Marsh:
	say "The firm ground quickly dissolves into mud and prevents any further travel east.".
	
Instead of going south in Marsh:
	say "You start to wander south, but without a way to navigate you would easily become lost in ever-shifting, waving grasses. If you were lost, hope would never return to Eunice. Thankfully, you turn back.".


Chapter 22 - Front Porch

Section 1 - setting up the room

The front door is south of the Old House and north of the Front Porch. The front door is a closed door. It is lockable and locked. The house key unlocks the front door.
	
Front Porch has the description "It's really just boards nailed together on the bare dirt, and a few of the boards are missing. But it has been swept recently."

The front door has the description "A large wooden door."

There is a mailbox and a welcome mat in Front Porch. The mailbox is a closed openable container. The description of the mailbox is "[if mailbox is closed]It is a metal box with the word 'Mail' embossed on the front. It looks polished and clean, and a little out of place on the porch.[otherwise if mailbox is open and stone of flexibility is in mailbox]The mailbox doesn't look as dark now that the elf has made a little home. There are even a few postage stamp pictures on the walls.[otherwise if the mailbox is open]The mailbox is dark. You strain your neck to peer in further."

Rule for printing the name of the elf while listing contents of mailbox: say "[if stone of flexibility is in the mailbox]contented elf[otherwise]frustrated elf".

Rule for printing the name of the stone of flexibility while listing contents of mailbox: say "stone of flexibility, which now looks like a sofa bed,"

The description of the welcome mat is "Woven grasses form a square mat in front of the door. It does not say 'welcome'. It does not even give a very welcoming impression."

Instead of looking under the welcome mat:
	say "You find dust and dirt.".
	
Before listing nondescript items of Front Porch:
	if the cracked flowerpot is marked for listing:
		now the cracked flowerpot is not marked for listing;
		if the tangle of vines are marked for listing:
			now the tangle of vines are not marked for listing.
			
		
Section 2 - Elf Convo

Inside the mailbox is an elf. The elf is a woman. The description of the elf is "[if stone of flexibility is in the mailbox]The elf is snuggled into the stone of flexibility, which at the moment looks like a [one of]recliner[or]chase lounge[or]rocking chair[at random][otherwise]The elf is about five inches high and looks at you with an unyielding grumpiness."

After opening the mailbox, say "You pull open the front panel of the mailbox. A pair of beady eyes glare back at you from a tiny wrinkled face. The elf, for she has narrow pointy ears sticking up above a little green hat, screeches loudly: 'BAAAAAAAAAAAAA!!'".

Instead of asking the elf about the subject quest: say "[if the stone of flexibility is in mailbox]'You'll have to deal with the troll next,' she replies, point signifiacntly towards the house, 'good luck on that one!' and the elf won't say anything else.[otherwise]'Oh, a quest, is it?' She stands rigid with her arms crossed, 'well, I have nothing to help you with. No treasures here.'"

Instead of asking the elf about the subject hope: say "[if the stone of flexibility is in the mailbox] 'Maybe things won't always be as they are now, maybe things can change for the better.' she shrugs, 'if you can free Hope.'[otherwise]'Hope is gone, havent the others told you? Nothing ever changes anyway, I've given up on Hope. Why do you care anyway?' The elf frowns, inflexible before you."

instead of asking the elf about the subject treasure: say "[if the stone of flexibility is in the mailbox]'I would help if I could, truly. But I'm just a little elf living a quiet life in this cozy mailbox.' the elf replies.[otherwise]'I don't know anything about treasures, clearly. I'm an elf living in an empty mailbox!' She stamps her foot, 'a completely empty mailbox... with Hope gone I have nothing.'"

Instead of asking the elf about the subject stone: say "[if the stone of flexibility is in the mailbox]'It's pretty great!' she agrees, 'maybe someday I will go on a quest of my own to see those statue people and thank them. You wish her luck on her future quest.[otherwise]'What stone?' the elf asks, her expression an unvarying frown."

Instead of asking the elf about the subject Eunice: say "[if the stone of flexibility is in the mailbox]'I dont get around Eunice much,' the elf admits, 'though before the Troll shut himself away, this was a happy place - when Hope was free.'[otherwise]'You want to know about Eunice?' the elf asks, though clearly it is a rhetorical question, 'it's dark, it's empty, and it's not going to change.' [paragraph break]'That seems a little severe', you respond. Surprisingly, she doesnt yell but just shrugs, 'I am not one to compromise. People have told me I need more flexiblity, but where would I get that?'"

Instead of giving the stone of flexibility to the elf: move the stone of flexibility to the mailbox; say "The elf steps back to let you place the little stone inside the mailbox. She stands for a moment with hands on her hips, looking at it, and then with great effort she pushes it just slightly to the left. Now that it is in the perfect place, she sits on the stone of flexibility just like a bean bag chair. The elf is now grinning happily."

Understand "unlock [something]" as unlocking it. Unlocking it is an action applying to one thing. Check unlocking it: 
	if the noun is not the front door, say "It is not unlockable." instead.

Carry out unlocking it:
	if the player carries the house key:
		if the stone of flexibility is in the mailbox:
			say "You fit the KEY of APPRECIATION into the front door lock. It turns with a rusty squeek. [line break]You pause for a moment, before opening the door to fortify your resolve to continue north into the Old House.";
			now the front door is unlocked;
		otherwise: 
			say "[if mailbox is closed] You take out the house key to unlock the house door, when suddenly the front of the mailbox pops open. A little elf screeches loudly, 'EEEEEAAAAAHHH!' then, just as abruptly the mailbox slams shut again.[otherwise]The elf yells, again 'EEEEEAAAAAHHH!'[end if][paragraph break][if player carries the house key]You drop the house key in surprise. It thuds on the front porch floor.";
			now the front door is locked;
			now the house key is in the Front Porch;
	otherwise:
		say "You need to have the KEY of APPRECIATION."

After opening the front door: say "The door swings open.".	
	
[
test to Inside house
]
Test me with "tend garden / south / south / climb tree / eat apple / climb tree / north / west / north / north / west / north / stretch / south / east / south / east / east / east / appreciate nature / east / feed fly to toad / ask toad about treasures / ask toad about key / ask toad about riddle / answer water / search water / search water / search water / search water / w / w / w / plant seeds / n / open mailbox / give elf stone / unlock door / open door / n"


Chapter 23 - Inside the house


Section 1 - Assemblies and Supporters

A chest is a kind of container. 
[does the always openable prevent the snake lock?]
A chest is always openable. A chest is usually fixed in place. A chest is usually closed. The specification of a chest is "Represents a container with a separately implemented lid; the lid is itself a supporter."

A lid is a kind of supporter. A lid is part of every chest. The specification of a lid is "A supporter attached to a chest, which can only support things when the chest is closed."

[(The "specification" of a kind is not really a property, and is used instead to describe the kind in the Index. So the text of these specifications is never found in the game.) Of course, this doesn't get us very far. We will also want the game to correctly interpret variations on "open the chest" and "close the lid", redirecting actions appropriately.]

Section 2 - Opening and closing

Before opening a lid which is part of a chest (called the item):
	try opening the item instead.

Before closing a lid which is part of a chest (called the item):
	try closing the item instead.

[below this makes it possible to take a little card off the chest, then open. But I want a heavy troll to block the player, until the troll is happy.]
Before opening a chest (called the box) when something is on a lid (called the obstruction) which is part of the box:
	repeat with item running through things on the obstruction:
		say "(first removing [the item])";
		try taking the item.

Instead of opening a chest when something is on a lid (called the item) which is part of the noun:
	say "You'd have to remove [the list of things on the item] from the lid first." instead.

Instead of looking under a lid which is part of a chest (called the item):
	try opening the item.


[We may also want to be able to deal with "put in" and "put on" appropriately, even if the player names the wrong part of the object:]

Section 3 - Insertion and Support

Before inserting something into a lid which is part of a chest (called the item):
	try inserting the noun into the item instead.

Before putting something on a chest when a lid (called the item) is part of the second noun:
	try putting the noun on the item instead.

[Furthermore, we don't want the player to be able to put things on the lid while the chest is open:]

Before putting something on a lid which is part of an open chest (called the item):
	say "(first closing [the item])";
	try closing the item.

Instead of putting something on a lid which is part of an open chest (called the item):
	say "[The item] would need to be closed first."

[And then we may also want a couple of rules for describing our assembled object nicely:]

Section 4 - Description in Rooms

Instead of examining a closed chest when something is on a lid (called the top) which is part of the noun:
	say "[The noun] is closed, and there [is-are a list of things on the top] on top."

After printing the name of a chest (called the item) while listing contents of a room:
	if a lid (called the second item) which supports something is part of the item:
		say " (on which [is-are a list of things on the second item])";
		omit contents in listing.

[Now we are free to create entire treasure rooms at a single blow:]


Section 5 - setting up the room

The Old House is a room. The Old House has the description "[if the steamer trunk is in the Old House]The table and chairs are bare, but clean. Light is finally able to filter in through the windows. There is a large steamer trunk on the other end of the room. [otherwise]The windows are blocked by grime and the scant furniture has been abandoned to dust. The whole house has the feeling of neglect and something more... as if the place were holding its breath."

The steamer trunk is a chest. The steamer trunk is nowhere. The steamer trunk contains a bird's nest and an egg. 
The description of steamer trunk is "It is large with brass fittings and a heavy lid.".
The egg is a supporter. The description of the egg is "The egg is cream colored and the size of a ball. The shell is dimpled slightly all over. Part of Hope's prison, the longer you look at it the colder you feel.".
The description of the bird's nest is "A nest of paper and ribbons might seem nice, but this is part of Hope's prison. It was built from starving gratitudes until they shriveled up and died. Though an inanimate object, it seethes with resentment.". Understand "birds nest" as bird's nest.
Instead of doing something other than examining to the bird's nest, say "You don't want to get too close to that tangle.".

Instead of attacking the egg, say "Violence won't free Hope.".

The steamer trunk's lid supports a snake. The snake is an animal. The description of the snake is "A coil of reptilian muscle, you shudder and decide not to disturb it. 'Bit intimidating,' the Troll says from over his shoulder, 'I'm much too afraid to do anything with him myself.'".

The Troll is a man in the Old House. The description of the Troll is "[if the steamer trunk is in the Old House]The troll is happier and definitely more lively now. He looks a hundred years younger. He has cleaned off a portion of counter where he is noisily making tea.[otherwise]The troll is standing rock-like in the middle of the one room house. He is large and the house is rather little, so he takes up a lot of space. [paragraph break]He can feel your eyes on him, and... s l o w l y... turns ... his head .... toward you. [line break]'Got frzen whin Hofe traffd.' he hardly moves his lips as he talks. [line break]'Oh no,' your voice sounds weak and tiny in the little house. You don't have anything prepared for this. 'Has anything helped you in the past in similar situations?' you ask. [line break]The Troll looks around, thinking, his eyeballs the only thing that has free movement, 'Laughng...kno any gud jokes?"

Before listing nondescript items of the Old House:
	if the front door is marked for listing:
		now the front door is not marked for listing;
		if the steamer trunk is marked for listing:
			now the steamer trunk is not marked for listing;
			if the snake is marked for listing:
				now the snake is not marked for listing.

Instead of asking the troll about the subject jokes:
	say "You remember a few silly jokes, and tell one to the Troll. '[one of]What did one wall say to the other wall? I'll meet you at the corner.'[or]What gets wetter the more it dries? A towel.'[or]Why do you go to bed every night? Because the bed won't come to you!'[or]Where do animals go when their tales fall off? A retail store.'[or]Why can't you hear a pterodactyl going to the bathroom? Because the P is silent.'[or]A wizard was driving down the street, what went wrong? He turned into a driveway!'[or]How do you make tissue dance? You put a little boogie in it!'[or]What did the 0 say to the 8? Nice belt.'[or]What bow can't be tied? A rainbow.'[at random][line break]The Troll's belly shakes and he makes a barking-burping noise. He is laughing.";
	now the steamer trunk is in the Old House;
	say "Things begin to look a little brighter in the old wooden house. The Troll moves to a corner where there is a teapot and faucet and begins puttering around. You notice a steamer trunk in the back of the house that had been hidden behind the Troll."

section 6 - Freeing Hope

Before putting anything on the egg:
	if the noun is the origami bird:
		say "You carefully take out the folded paper bird, remembering some things you were grateful for, and place the little paper bird on top of the enormous egg. It balances, just a little lopsided. For the moment, nothing happens.";
	otherwise:
		say "A force stops your hand with a kind of repulsion." instead.

After putting the origami bird on the egg: say "Then the paper bird flutters and settles in to warm the egg. Slowly the egg begins to wobble, then shake. The paper bird flaps away through the window and out into Eunice.[paragraph break]...[paragraph break]";
	wait for any key;
	say "A crack forms in the shell. The crack expands and spreads. [paragraph break]After what feels like hours, you can see a tiny beak poking through. As Hope breaks free of its prison, sunlight fills the house.[paragraph break]...[paragraph break]";
	wait for any key;
	say "The hatchling is a delicate thing with feathers. It makes a shrill chirp and shuffles it's baby bird body. Slowly, it spreads its wings. Before your eyes it grows and grows. It flies across all of Eunice like a cloud, yet filling it with sunlight. Hope has returned to the land.[paragraph break]...[paragraph break]";
	wait for any key;
	end the story finally saying "You have succeeded in returning Eunice to its glory! From the mountains and fields to the woods and marshes, Hope fills the land. It is now time to return to your own world. Thank you for your grit, appreciation, humor, mindfulness, flexibility, and gratitude.".
	



[	

what is the world like after?
Or the game just ends once Hope is free

]
