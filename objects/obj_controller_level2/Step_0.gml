numberOfCards = instance_number(obj_card_level2);
foundCards = 0;
with(obj_card_level2) {
   if (flipped == true) 
   {
        other.foundCards += 1;
   }
}
if (foundCards == numberOfCards) {
 // All cards are marked as found
 room_goto(rm_level3)
}