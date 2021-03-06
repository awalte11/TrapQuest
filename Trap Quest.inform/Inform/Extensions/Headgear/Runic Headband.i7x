Runic Headband by Headgear begins here.


runic headband is a headgear. runic headband is silk. runic headband is purity. Figure of runic headband is the file "Items/Accessories/Head/runicheadband1.png". runic headband is hair growing. runic headband is roleplay.

Definition: runic headband is fluid immune: decide yes.
The printed name of runic headband is "[clothing-title-before]runic headband[clothing-title-after]". The text-shortcut of runic headband is "rhb".


To decide which figure-name is the clothing-image of (C - runic headband):
	decide on figure of runic headband.

To say ClothingDesc of (H - runic headband):
	say "This white headband [if H is worn]sits on your forehead. It [end if]has runic characters embedded in silver most of the way around. You have no idea what they mean[if abyssal tattoo is worn]. The runes have turned black, and almost seem wet with some kind of sludge[end if].".

To say ShortDesc of (H - runic headband):
	say "runic headband".

To compute SelfExamineDesc of (H - runic headband):
	let X be the largeness of hair;
	say "You are wearing a religious headband on top of your [ShortDesc of hair]. ".

To set up influence of (C - runic headband):
	set up stat-based influence of C.

To decide which number is the strength-influence of (H - runic headband):
	let S be 0;
	if the class of the player is cultist:
		repeat with L running through worn cursed clothing:
			if L is not H, increase S by 1;
		let I be the intelligence of the player;
		increase S by I / 6;
	decide on S.

To decide which number is the dexterity-influence of (H - runic headband):
	let D be 0;
	if the class of the player is cultist:
		repeat with L running through worn cursed clothing:
			if L is not H, increase D by 1;
		let I be the intelligence of the player;
		increase D by I / 6;
	decide on D.

To decide which number is the intelligence-influence of (H - runic headband):
	let I be 0;
	if the class of the player is cultist:
		repeat with L running through worn cursed clothing:
			if L is not H, increase I by 1;
	decide on I.

To compute hair colour change of (H - runic headband):
	compute hair colour darken of H.

Definition: runic headband is magic themed: decide yes.

Chapter - Class Outfit

Definition: runic headband is removal-blocking:
	if wearing-target is runic headband, decide no;
	if wearing-target is purity, decide yes;
	if runic headband is not purity and wearing-target is crotchless-panties, decide yes;
	decide no. [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]

priestess-summoned is a number that varies.
To compute unique recycling of (C - runic headband):
	now priestess-summoned is 0.

To compute class outfit of (H - runic headband):
	if the number of alive royal guards is 0: [We need someone to service]
		let M be a random royal guard;
		summon M in the dungeon;
		set up M;
	if H is purity:
		let P be a random off-stage flowing priestess outfit;
		if P is actually summonable or (P is priestess outfit and priestess-summoned is 0 and the number of worn priestess outfit + the number of worn golden warrior priestess outfit is 0):
			if priestess-summoned is 0:
				repeat with O running through worn dresses:
					say "Your [O] [wardrobeVanishes of O]!";
					now O is in pink wardrobe;
				repeat with O running through worn exclusive corsets:
					say "Your [O] [wardrobeVanishes of O]!";
					now O is in pink wardrobe;
				repeat with O running through worn skirted clothing:
					say "Your [O] [wardrobeVanishes of O]!";
					now O is in pink wardrobe;
			now priestess-summoned is 1;
			say "[bold type]Your runic headband gently hums as holy attire shimmers into existence around your body.[roman type][line break]";
			summon P;
			now the raw-magic-modifier of P is the number of worn cursed clothing + the number of worn blessed clothing - 1;
	otherwise:
		if pearl crotchless-panties is off-stage and pearl crotchless-panties is actually summonable:
			say "[bold type]Your runic headband gently hums as crotchless panties with a string of pearls down the middle appear on you!";
			summon pearl crotchless-panties uncursed.






Chapter - Quest

priestess-service-quest is a headgear-clothing-quest.

To uniquely set up (C - runic headband):
	if the virgin of the player is 1, now C is purity;
	now the quest of C is priestess-service-quest.

To say QuestFlav of (Q - priestess-service-quest):
	say "You sense that it wants you to [if diaper quest is 1]use a diaper in the dungeon altar room[otherwise]stay a virgin, and 'service' men while your [']ritual beads['] are FULLY inserted inside you, then present the beads at the dungeon altar[end if].".

To say QuestTitle of (Q - priestess-service-quest):
	say " ([if diaper quest is 1]altar diaper[otherwise]ritual beads 'service'[end if] quest)".

To compute persistent reward of (Q - priestess-service-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		if the size of ritual-beads <= 4:
			now D is emerald;
		otherwise if the size of ritual-beads <= 6:
			now D is ruby;
		otherwise if the size of ritual-beads <= 8:
			now D is pink diamond;
		otherwise:
			now D is pure diamond;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		say "materialising useful tools near the altar!";
		let L be a random off-stage lubricant;
		let B be a random off-stage bandage;
		let F be a random off-stage magic token;
		if L is lubricant and diaper quest is 0:
			say "A small bottle of [ShortDesc of L] appears at your feet.";
			now L is in the location of the player;
			compute autotaking L;
		if B is bandage and a random number between 1 and 2 is 1:
			say "A [ShortDesc of B] appears at your feet.";
			now B is in the location of the player;
			compute autotaking B;
		if F is mass collectible:
			say "A [ShortDesc of F] appears at your feet.";
			now F is in the location of the player;
			compute autotaking F;


priestess-vaginal-service-quest is a headgear-clothing-quest.

To say QuestFlav of (Q - priestess-vaginal-service-quest):
	say "You sense that it wants you to have vaginal sex with men while your [']ritual beads['] are FULLY inserted inside you, OR while the men are wearing condoms, then present the beads or your condom-pinned headband at the dungeon altar.".

To say QuestTitle of (Q - priestess-vaginal-service-quest):
	say " (vaginal sex quest)".


To compute persistent reward of (Q - priestess-vaginal-service-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		if the size of ritual-beads <= 4:
			now D is emerald;
		otherwise if the size of ritual-beads <= 6:
			now D is ruby;
		otherwise if the size of ritual-beads <= 8:
			now D is pink diamond;
		otherwise:
			now D is pure diamond;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		say "materialising useful tools near the altar!";
		let L be a random off-stage lubricant;
		if L is lubricant:
			say "A small bottle of [ShortDesc of L] appears at your feet.";
			now L is in the location of the player;
			compute autotaking L;
		if condom-pack is off-stage:
			say "A condom pack appears at your feet.";
			now condom-pack is in the location of the player;
			compute autotaking condom-pack.

To compute virginity-loss of (C - runic headband):
	now C is not purity;
	if diaper quest is 0 and the quest of C is priestess-service-quest and the player is female and the pregnancy of the player is 0:
		now C is cursed;
		say "Your [ShortDesc of C] shudders as a curse falls upon it. A voice rebounds in your head.[line break][second custom style]'[GoddessAddress] you have sinned! Your quest will have to be... reassigned. Once a sinner, always a sinner, as they say. From now on, you must use that sinful cunt of yours for your service. But beware, if you [if pregnancy fetish > 0]fall pregnant[otherwise]fill your sacred womb with too much seed[end if], you will not be forgiven, and the price will be dear. Present your ritual beads or headband with [']evidence['] of your service to my altar when your deeds are complete.'[roman type][line break]";
		now the quest of C is priestess-vaginal-service-quest;
		repeat with M running through male unwrapped monsters penetrating vagina:
			say "A condom appears around [NameDesc of M][']s [DickDesc of M]!";
			now M is wrapped;
		say "A recipe appears at your feet!";
		let R be a random recipe for condom-pack;
		now R is in the location of the player;
		try examining R.

[!<TheRunicHeadbandPussySlutRule>+

Being a vaginal-focused priestess makes vaginal sex much more likely.

+!]
This is the runic headband pussy slut rule:
	if runic headband is worn:
		if runic headband is not purity:
			increase the desirability of vagina by 10;
		otherwise:
			increase the desirability of vagina by the size of ritual-beads.
The runic headband pussy slut rule is listed in the pussy slut eligibility rules.

A later time based rule (this is the sinful priestess punishment rule):
	if runic headband is worn and the quest of runic headband is priestess-vaginal-service-quest:
		let priestessPunish be 0;
		if pregnancy fetish is 1:
			if the pregnancy of the player > 0:
				now priestessPunish is 1;
				say "A voice rebounds in your head.[line break][second custom style]'[GoddessAddress] you have allowed your womb to become defiled with unsacred seed, and have begun to carry life inside you! ";
		otherwise if the womb volume of vagina > 2:
			say "A voice rebounds in your head.[line break][second custom style]'[GoddessAddress] you have allowed your womb to become defiled with disgraceful amounts of unsacred seed! ";
		if priestessPunish is 1:
			say "This is unforgivable. You have broken my trust and failed me. Fine. I release you from your charge, and leave you to the demons. Perhaps the Other Side will have more use for a whore such as you.'[roman type][line break]";
			compute unique recycling of gold-tiara;
			now the quest of runic headband is demon-slut-quest;
			transform runic headband into gold-tiara;
			now gold-tiara is cursed;
			say QuestFlav of gold-tiara;
			compute class outfit of gold-tiara.


Runic Headband ends here.

