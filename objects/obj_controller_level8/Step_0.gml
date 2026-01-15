numberOfCards = instance_number(obj_card_level8);
foundCards = 0;
with(obj_card_level8) {
   if (flipped == true) 
   {
        other.foundCards += 1;
   }
}
if (foundCards == numberOfCards) {
 // All cards are marked as found
 room_goto(rm_level9)
}