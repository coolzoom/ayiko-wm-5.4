delete from spell_proc_event where entry = 142531;


insert into `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) values('142531','0','0','0','0','0','0','0','0','2.3','0','0');

delete from `spell_script_names` where spell_id= 142531;

insert into `spell_script_names`(`spell_id`,`ScriptName`) values( '142531','spell_gen_ench_dancing_steel'); 
