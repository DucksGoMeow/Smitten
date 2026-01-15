numberOfCards = instance_number(obj_card_level34);
foundCards = 0;
with(obj_card_level34) {
   if (flipped == true) 
   {
        other.foundCards += 1;
   }
}
if (foundCards == numberOfCards) {
 // All cards are marked as found
 global.highestScore++;
 room_goto(rm_level35);
}