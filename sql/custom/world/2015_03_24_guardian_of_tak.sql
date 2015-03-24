DELETE FROM smart_scripts WHERE entryorguid=46499;

DELETE FROM spell_script_names WHERE spell_id=86659 OR spell_id=86669 OR spell_id=86698;

INSERT INTO spell_script_names VALUES ('86659', 'spell_pal_guardian'), ('86669', 'spell_pal_guardian'), ('86698', 'spell_pal_guardian');