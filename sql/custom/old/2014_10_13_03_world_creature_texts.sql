UPDATE npc_text SET
text0_0 = replace(text0_0, '$N', '$n'),
text0_1 = replace(text0_1, '$N', '$n'),
text1_0 = replace(text1_0, '$N', '$n'),
text1_1 = replace(text1_1, '$N', '$n'),
text2_0 = replace(text2_0, '$N', '$n'),
text2_1 = replace(text2_1, '$N', '$n'),
text3_0 = replace(text3_0, '$N', '$n'),
text3_1 = replace(text3_1, '$N', '$n'),
text4_0 = replace(text4_0, '$N', '$n'),
text4_1 = replace(text4_1, '$N', '$n'),
text5_0 = replace(text5_0, '$N', '$n'),
text5_1 = replace(text5_1, '$N', '$n'),
text6_0 = replace(text6_0, '$N', '$n'),
text6_1 = replace(text6_1, '$N', '$n');

UPDATE creature_text SET text = replace(text, '$N', '$n');
UPDATE creature_text SET text = replace(text, '$G', '$g');
