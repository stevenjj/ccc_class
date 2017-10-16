% Cognitive Computation Control
% HW 2
% Steven Jens Jorgensen
rich(boddy).
%rich(colonelmustard). % Uncomment this line to deduce only a singler murderer
greed(colonelmustard).

married(profplum, msgreen).
married(msgreen, profplum).

affair(boddy, msgreen).
affair(msgreen, boddy).

affair(scarlett, boddy).
affair(boddy, scarlett).

hates(X,Y):-married(X,Z), affair(Y,Z).
jealous_greed(X,Y):-greed(X), not(rich(X)), rich(Y).

murder(X,Y):- hates(X,Y); jealous_greed(X,Y).


% 1. Write the facts and rules as a Prolog program. Be careful about how you encode (or don’t encode) symmetric relationships (like marriage) - you don’t want infinite loops!
%     Answer: Symmetry is addressed by writing the facts: clause(X,Y). and clause(Y,X).
% 2. Can you determine who killed Mr. Boddy? Who are the possible suspects?
%	  Answer: From the facts above, the two possible suspects can be obtained by typing: 
%			  murder(X,Y). 
%			  which results into X = profplum, Y = boddy;
%			  and X = colonelmustard, Y = boddy
% 3. Add a single fact to your database that will result in there being a unique suspect
%	  Answer: add the following fact:
%			  rich(colonelmustard).
%	 Now murder(X,Y) will return X = profplum, Y = boddy;



/*
Four guests (Colonel Mustard, Professor Plum, Miss Scarlett, Ms. Green) attend a dinner party at the home of Mr. Boddy. Suddenly, the lights go out! When they come back, Mr Boddy lies dead in the middle of the table. Everyone is a suspect.

Upon further examination, the following facts come to light:

Mr Boddy was having an affair with Ms. Green.
Professor Plum is married to Ms. Green.
Mr. Boddy was very rich.
Colonel Mustard is very greedy.
Miss Scarlett was also having an affair with Mr. Boddy.
There are two possible motives for the murder: hatred and greed. Someone hates someone else if that other person is having an affair with his/her spouse. Someone is willing to commit murder if they are greedy and not rich, and the victim is rich.
*/