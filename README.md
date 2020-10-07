# Diwako's ACE medical tweaks

Sometimes I have pet peeves that need scratching. This mod will modfiy ACE's medical system in some way or another. Mostly there to adjust treatment times or other small changes.

Reason why you do not see a PR to ACE direcetly is, these changes are not meant to be realistic, they are meant as gameplay enhancements, making medical triage faster (or slower if you want such a thing), or making things behave differently which might not be intended by the ACE team.

Sometimes this is just a test bed before a PR to ACE is considered, who knows.

## Adjustable treatment times

Some treatment times are hard coded to some value in ACE, here they get modified to be variable. Some examples:

- Time to tourniquet
- Time to Splint
- Time to give blood
- Time to give CPR
- Modifier for PAK time

## AI Limb damage factors into fatal wounds

In the ACE medical rewrite, limb damage does not outright kill you. Damage to limbs will make you either go unconscious or make you bleed out. But you do not straight up die if you get shot in your arm.

With this setting it is possible to make limb damage be factored into the fatal wound calculation, meaning affected units "feel" less "spongy" or something.

This only affects AI!
