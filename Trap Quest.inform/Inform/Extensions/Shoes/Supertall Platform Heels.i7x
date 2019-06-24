Supertall Platform Heels by Shoes begins here.

A tall platform heels is a kind of platform heels. A tall platform heels is usually pvc. A tall platform heels is rare.

There are 2 tall platform heels.

Figure of 9 inch pvc platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform1b.png".
Figure of 10 inch pvc platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform1c.png".

To decide which figure-name is the clothing-image of (H - a tall platform heels):
	if the heel-height of H >= 10, decide on the figure of 10 inch pvc platform heels;
	decide on the figure of 9 inch pvc platform heels.


To say ClothingDesc of (C - a tall platform heels):
	say "A [if the heel-height of C is 9]unique pink and white [otherwise if the heel-height of C >= 10]unique red [end if]pair of [heel-height of C] inch PVC platform shoes with strong chunky heels and platforms.";
	say "[SteadinessDesc of C]".

To uniquely set up (C - a tall platform heels):
	let R be a random number between 1 and 8;
	if C is cursed:
		if R <= 2:
			now C is posture training;[They can't be stumbling]
	otherwise:
		if R is 1, now C is speed;
		if R is 2, now C is kicking;
	if a random number between 1 and 2 is 1, now the heel-height of C is 9;
	otherwise now the heel-height of C is 10.

Definition: a tall platform heels is black themed: decide no.
Definition: a tall platform heels is pink themed if the heel-height of it is 9.
Definition: a tall platform heels is white themed if it is pink themed.
Definition: a tall platform heels is red themed if the heel-height of it > 9.
Definition: a tall platform heels is end of transformation chain: decide yes. [It's the end of the transformation chain. This will make some things avoid bothering to attempt to transform it.]

Definition: a tall platform heels (called C) is IcarusScienceAppropriate:
	if the heel skill of the player > 4 and C is actually summonable, decide yes;
	decide no.

To say TransformReaction of (C - a tall platform heels):
	if the outrage of C is too humiliating:
		say "[variable custom style]What the fuck are these?! They are ludicrous. [if the hindrance of C > 2]There's no way I can walk in them without falling over.[otherwise]And a challenge to walk in...[end if][roman type][line break]";
	otherwise if C is almost too much:
		say "[variable custom style]I actually quite how quirky these are, and they make me feel really tall! [if the hindrance of C > 2]I'm not sure how I'm to walk around in them without falling over though.[otherwise]I hope I don't fall over too much, though![end if][roman type][line break]";
	otherwise if the player is not broken:
		say "[variable custom style]OMG, these are so cool! [if the hindrance of C > 2]It's going to make it very difficult for me to stay on two feet and keep the naughty boys away from my ass though, tee hee![otherwise]And they're just what I need to get proper practice walking in extreme heels.[end if][roman type][line break]".


Supertall Platform Heels ends here.

