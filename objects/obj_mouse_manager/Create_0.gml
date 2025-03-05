/// @description Initialise variables.
// We want to only ever be able to grab 1 card at a time.
grabbed_card = noone;

// This lerp is used to make the card "snap" its center to the cursor.
// Doing it in a lerp means it wont happen in a single frame, and if the player moves their
// cursor very fast it will "lag" behind. We keep this high, as we want it to be basically
// instant.
lerp_amount = 0.85;