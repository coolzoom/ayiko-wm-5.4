-- [SQL] [Kysio's fix with collaboration by Blue] Items - Honor and Conquest vendor prices corrected (Fixes #8718)
UPDATE `creature_template` SET `npcflag` = `npcflag`|128, `unit_flags` = `unit_flags`|256, `flags_extra` = `flags_extra`|2 WHERE `entry` IN (69967, 69965, 69981, 69982);
DELETE FROM `npc_vendor` WHERE `entry` IN (69967, 69965, 69981, 69982);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES
(69965, 3, 76061, 0, 0, 4312, 1),
(69965, 0, 94302, 0, 0, 5221, 1),
(69965, 0, 94304, 0, 0, 5218, 1),
(69965, 0, 94306, 0, 0, 5221, 1),
(69965, 178, 94307, 0, 0, 3888, 1),
(69965, 0, 94310, 0, 0, 5221, 1),
(69965, 180, 94311, 0, 0, 3888, 1),
(69965, 0, 94312, 0, 0, 5218, 1),
(69965, 182, 94313, 0, 0, 3888, 1),
(69965, 0, 94315, 0, 0, 5218, 1),
(69965, 0, 94316, 0, 0, 5218, 1),
(69965, 0, 94317, 0, 0, 5218, 1),
(69965, 0, 94318, 0, 0, 5218, 1),
(69965, 187, 94320, 0, 0, 3888, 1),
(69965, 0, 94321, 0, 0, 5218, 1),
(69965, 0, 94322, 0, 0, 5218, 1),
(69965, 190, 94323, 0, 0, 3888, 1),
(69965, 0, 94325, 0, 0, 5218, 1),
(69965, 192, 94326, 0, 0, 3888, 1),
(69965, 7, 94327, 0, 0, 3886, 1),
(69965, 8, 94328, 0, 0, 3885, 1),
(69965, 9, 94329, 0, 0, 3885, 1),
(69965, 10, 94330, 0, 0, 3885, 1),
(69965, 11, 94331, 0, 0, 3885, 1),
(69965, 12, 94332, 0, 0, 3886, 1),
(69965, 13, 94333, 0, 0, 3885, 1),
(69965, 14, 94334, 0, 0, 3886, 1),
(69965, 15, 94335, 0, 0, 3886, 1),
(69965, 16, 94336, 0, 0, 3885, 1),
(69965, 17, 94337, 0, 0, 3884, 1),
(69965, 18, 94338, 0, 0, 3885, 1),
(69965, 19, 94339, 0, 0, 3885, 1),
(69965, 20, 94340, 0, 0, 3885, 1),
(69965, 21, 94341, 0, 0, 3886, 1),
(69965, 22, 94342, 0, 0, 3885, 1),
(69965, 23, 94343, 0, 0, 3885, 1),
(69965, 24, 94344, 0, 0, 3885, 1),
(69965, 25, 94345, 0, 0, 3886, 1),
(69965, 26, 94346, 0, 0, 3885, 1),
(69965, 27, 94347, 0, 0, 3886, 1),
(69965, 28, 94348, 0, 0, 3886, 1),
(69965, 29, 94349, 0, 0, 3885, 1),
(69965, 30, 94350, 0, 0, 3885, 1),
(69965, 31, 94351, 0, 0, 3885, 1),
(69965, 32, 94352, 0, 0, 3885, 1),
(69965, 33, 94353, 0, 0, 3885, 1),
(69965, 34, 94354, 0, 0, 3884, 1),
(69965, 35, 94355, 0, 0, 3884, 1),
(69965, 36, 94356, 0, 0, 3885, 1),
(69965, 37, 94357, 0, 0, 3884, 1),
(69965, 38, 94358, 0, 0, 3885, 1),
(69965, 39, 94359, 0, 0, 3885, 1),
(69965, 40, 94360, 0, 0, 3885, 1),
(69965, 41, 94362, 0, 0, 3886, 1),
(69965, 42, 94363, 0, 0, 3884, 1),
(69965, 43, 94364, 0, 0, 3885, 1),
(69965, 44, 94365, 0, 0, 3886, 1),
(69965, 45, 94366, 0, 0, 3885, 1),
(69965, 46, 94367, 0, 0, 3886, 1),
(69965, 47, 94368, 0, 0, 3886, 1),
(69965, 48, 94369, 0, 0, 3885, 1),
(69965, 49, 94370, 0, 0, 3886, 1),
(69965, 50, 94371, 0, 0, 3885, 1),
(69965, 51, 94372, 0, 0, 3885, 1),
(69965, 52, 94373, 0, 0, 3885, 1),
(69965, 53, 94374, 0, 0, 3885, 1),
(69965, 54, 94375, 0, 0, 3886, 1),
(69965, 55, 94376, 0, 0, 3885, 1),
(69965, 56, 94377, 0, 0, 3885, 1),
(69965, 57, 94378, 0, 0, 3885, 1),
(69965, 58, 94379, 0, 0, 3884, 1),
(69965, 59, 94380, 0, 0, 3884, 1),
(69965, 60, 94381, 0, 0, 3886, 1),
(69965, 61, 94382, 0, 0, 3885, 1),
(69965, 62, 94383, 0, 0, 3884, 1),
(69965, 63, 94384, 0, 0, 3886, 1),
(69965, 64, 94385, 0, 0, 3885, 1),
(69965, 65, 94387, 0, 0, 3885, 1),
(69965, 66, 94389, 0, 0, 3885, 1),
(69965, 67, 94390, 0, 0, 3884, 1),
(69965, 68, 94391, 0, 0, 3885, 1),
(69965, 69, 94392, 0, 0, 3886, 1),
(69965, 70, 94393, 0, 0, 3885, 1),
(69965, 71, 94394, 0, 0, 3884, 1),
(69965, 72, 94395, 0, 0, 3884, 1),
(69965, 73, 94396, 0, 0, 3885, 1),
(69965, 74, 94397, 0, 0, 3886, 1),
(69965, 75, 94398, 0, 0, 3885, 1),
(69965, 76, 94399, 0, 0, 3884, 1),
(69965, 77, 94400, 0, 0, 3885, 1),
(69965, 78, 94401, 0, 0, 3885, 1),
(69965, 79, 94402, 0, 0, 3885, 1),
(69965, 80, 94403, 0, 0, 3884, 1),
(69965, 81, 94404, 0, 0, 3884, 1),
(69965, 82, 94405, 0, 0, 3886, 1),
(69965, 83, 94406, 0, 0, 3886, 1),
(69965, 84, 94407, 0, 0, 3884, 1),
(69965, 85, 94408, 0, 0, 3885, 1),
(69965, 86, 94409, 0, 0, 3886, 1),
(69965, 87, 94410, 0, 0, 3885, 1),
(69965, 88, 94411, 0, 0, 3884, 1),
(69965, 89, 94412, 0, 0, 3885, 1),
(69965, 90, 94413, 0, 0, 3885, 1),
(69965, 91, 94414, 0, 0, 3885, 1),
(69965, 92, 94415, 0, 0, 3885, 1),
(69965, 93, 94416, 0, 0, 3885, 1),
(69965, 94, 94417, 0, 0, 3884, 1),
(69965, 95, 94418, 0, 0, 3884, 1),
(69965, 96, 94419, 0, 0, 3886, 1),
(69965, 97, 94420, 0, 0, 3886, 1),
(69965, 98, 94421, 0, 0, 3884, 1),
(69965, 99, 94422, 0, 0, 3885, 1),
(69965, 100, 94423, 0, 0, 3885, 1),
(69965, 101, 94424, 0, 0, 3885, 1),
(69965, 102, 94425, 0, 0, 3885, 1),
(69965, 103, 94426, 0, 0, 3886, 1),
(69965, 104, 94427, 0, 0, 3884, 1),
(69965, 105, 94428, 0, 0, 3886, 1),
(69965, 106, 94429, 0, 0, 3886, 1),
(69965, 107, 94430, 0, 0, 3886, 1),
(69965, 108, 94431, 0, 0, 3886, 1),
(69965, 109, 94432, 0, 0, 3885, 1),
(69965, 110, 94433, 0, 0, 3886, 1),
(69965, 111, 94434, 0, 0, 3886, 1),
(69965, 112, 94435, 0, 0, 3886, 1),
(69965, 113, 94436, 0, 0, 3886, 1),
(69965, 114, 94437, 0, 0, 3886, 1),
(69965, 115, 94438, 0, 0, 3885, 1),
(69965, 116, 94439, 0, 0, 3884, 1),
(69965, 117, 94440, 0, 0, 3885, 1),
(69965, 118, 94441, 0, 0, 3885, 1),
(69965, 119, 94442, 0, 0, 3886, 1),
(69965, 120, 94443, 0, 0, 3886, 1),
(69965, 121, 94444, 0, 0, 3886, 1),
(69965, 122, 94445, 0, 0, 3885, 1),
(69965, 123, 94446, 0, 0, 3886, 1),
(69965, 124, 94447, 0, 0, 3885, 1),
(69965, 125, 94448, 0, 0, 3886, 1),
(69965, 126, 94449, 0, 0, 3884, 1),
(69965, 127, 94450, 0, 0, 3885, 1),
(69965, 128, 94451, 0, 0, 3885, 1),
(69965, 129, 94452, 0, 0, 3884, 1),
(69965, 130, 94453, 0, 0, 3885, 1),
(69965, 131, 94454, 0, 0, 3885, 1),
(69965, 132, 94455, 0, 0, 3885, 1),
(69965, 133, 94456, 0, 0, 3886, 1),
(69965, 134, 94457, 0, 0, 3885, 1),
(69965, 135, 94458, 0, 0, 3885, 1),
(69965, 136, 94459, 0, 0, 3886, 1),
(69965, 137, 94460, 0, 0, 3885, 1),
(69965, 138, 94461, 0, 0, 3885, 1),
(69965, 139, 94462, 0, 0, 3884, 1),
(69965, 140, 94463, 0, 0, 3886, 1),
(69965, 141, 94464, 0, 0, 3885, 1),
(69965, 142, 94465, 0, 0, 3884, 1),
(69965, 143, 94466, 0, 0, 3885, 1),
(69965, 144, 94467, 0, 0, 3886, 1),
(69965, 145, 94468, 0, 0, 3885, 1),
(69965, 146, 94469, 0, 0, 3884, 1),
(69965, 147, 94470, 0, 0, 3884, 1),
(69965, 148, 94471, 0, 0, 3886, 1),
(69965, 149, 94472, 0, 0, 3884, 1),
(69965, 150, 94473, 0, 0, 3884, 1),
(69965, 151, 94474, 0, 0, 3884, 1),
(69965, 152, 94475, 0, 0, 3886, 1),
(69965, 153, 94476, 0, 0, 3885, 1),
(69965, 154, 94477, 0, 0, 3886, 1),
(69965, 155, 94478, 0, 0, 3886, 1),
(69965, 156, 94479, 0, 0, 3886, 1),
(69965, 157, 94480, 0, 0, 3885, 1),
(69965, 158, 94481, 0, 0, 3884, 1),
(69965, 159, 94482, 0, 0, 3885, 1),
(69965, 160, 94483, 0, 0, 3886, 1),
(69965, 161, 94484, 0, 0, 3886, 1),
(69965, 162, 94485, 0, 0, 3884, 1),
(69965, 163, 94486, 0, 0, 3884, 1),
(69965, 164, 94487, 0, 0, 3884, 1),
(69965, 165, 94488, 0, 0, 3884, 1),
(69965, 166, 94489, 0, 0, 3884, 1),
(69965, 167, 94490, 0, 0, 3885, 1),
(69965, 168, 94491, 0, 0, 3885, 1),
(69965, 169, 94492, 0, 0, 3886, 1),
(69965, 170, 94493, 0, 0, 3885, 1),
(69965, 171, 94494, 0, 0, 3886, 1),
(69965, 172, 94495, 0, 0, 3886, 1),
(69965, 173, 94496, 0, 0, 3886, 1),
(69965, 174, 94497, 0, 0, 3886, 1),
(69965, 193, 94498, 0, 0, 3884, 1),
(69965, 194, 94499, 0, 0, 3884, 1),
(69965, 195, 94500, 0, 0, 3884, 1),
(69965, 196, 94501, 0, 0, 3884, 1),
(69965, 197, 94502, 0, 0, 3884, 1),
(69965, 4, 95349, 0, 0, 4539, 1),
(69965, 1, 98162, 0, 0, 4713, 1),
(69965, 5, 98163, 0, 0, 4709, 1),
(69965, 2, 98164, 0, 0, 4710, 1),
(69965, 6, 98336, 0, 0, 4713, 1),
(69967, 3, 76061, 0, 0, 4312, 1),
(69967, 175, 91087, 0, 0, 3888, 1),
(69967, 176, 91091, 0, 0, 3888, 1),
(69967, 0, 91093, 0, 0, 5218, 1),
(69967, 0, 91095, 0, 0, 5218, 1),
(69967, 0, 91097, 0, 0, 5218, 1),
(69967, 7, 91099, 0, 0, 3885, 1),
(69967, 8, 91100, 0, 0, 3884, 1),
(69967, 9, 91101, 0, 0, 3884, 1),
(69967, 10, 91102, 0, 0, 3884, 1),
(69967, 11, 91103, 0, 0, 3884, 1),
(69967, 12, 91104, 0, 0, 3885, 1),
(69967, 13, 91105, 0, 0, 3884, 1),
(69967, 14, 91106, 0, 0, 3884, 1),
(69967, 15, 91109, 0, 0, 3885, 1),
(69967, 16, 91111, 0, 0, 3885, 1),
(69967, 17, 91113, 0, 0, 3885, 1),
(69967, 18, 91115, 0, 0, 3885, 1),
(69967, 19, 91117, 0, 0, 3885, 1),
(69967, 20, 91119, 0, 0, 3885, 1),
(69967, 21, 91121, 0, 0, 3884, 1),
(69967, 22, 91122, 0, 0, 3884, 1),
(69967, 23, 91123, 0, 0, 3884, 1),
(69967, 24, 91124, 0, 0, 3884, 1),
(69967, 25, 91125, 0, 0, 3884, 1),
(69967, 26, 91126, 0, 0, 3884, 1),
(69967, 180, 91127, 0, 0, 3884, 1),
(69967, 181, 91129, 0, 0, 3884, 1),
(69967, 0, 91131, 0, 0, 5221, 1),
(69967, 183, 91133, 0, 0, 3888, 1),
(69967, 27, 91135, 0, 0, 3884, 1),
(69967, 28, 91136, 0, 0, 3884, 1),
(69967, 29, 91137, 0, 0, 3884, 1),
(69967, 30, 91138, 0, 0, 3884, 1),
(69967, 31, 91139, 0, 0, 3884, 1),
(69967, 32, 91140, 0, 0, 3884, 1),
(69967, 184, 91141, 0, 0, 3884, 1),
(69967, 185, 91145, 0, 0, 3888, 1),
(69967, 33, 91147, 0, 0, 3886, 1),
(69967, 34, 91149, 0, 0, 3885, 1),
(69967, 35, 91151, 0, 0, 3886, 1),
(69967, 36, 91153, 0, 0, 3886, 1),
(69967, 37, 91155, 0, 0, 3885, 1),
(69967, 38, 91157, 0, 0, 3885, 1),
(69967, 39, 91159, 0, 0, 3886, 1),
(69967, 40, 91161, 0, 0, 3886, 1),
(69967, 41, 91163, 0, 0, 3886, 1),
(69967, 42, 91165, 0, 0, 3885, 1),
(69967, 43, 91167, 0, 0, 3885, 1),
(69967, 44, 91169, 0, 0, 3885, 1),
(69967, 45, 91171, 0, 0, 3884, 1),
(69967, 46, 91172, 0, 0, 3885, 1),
(69967, 47, 91174, 0, 0, 3886, 1),
(69967, 48, 91176, 0, 0, 3886, 1),
(69967, 49, 91178, 0, 0, 3886, 1),
(69967, 50, 91180, 0, 0, 3885, 1),
(69967, 186, 91182, 0, 0, 3888, 1),
(69967, 51, 91184, 0, 0, 3885, 1),
(69967, 52, 91186, 0, 0, 3885, 1),
(69967, 53, 91188, 0, 0, 3884, 1),
(69967, 54, 91189, 0, 0, 3885, 1),
(69967, 55, 91191, 0, 0, 3886, 1),
(69967, 56, 91193, 0, 0, 3886, 1),
(69967, 57, 91195, 0, 0, 3886, 1),
(69967, 58, 91197, 0, 0, 3885, 1),
(69967, 0, 91203, 0, 0, 5221, 1),
(69967, 188, 91205, 0, 0, 3884, 1),
(69967, 189, 91207, 0, 0, 3888, 1),
(69967, 59, 91209, 0, 0, 3885, 1),
(69967, 60, 91210, 0, 0, 3885, 1),
(69967, 61, 91211, 0, 0, 3885, 1),
(69967, 62, 91212, 0, 0, 3885, 1),
(69967, 63, 91214, 0, 0, 3885, 1),
(69967, 64, 91216, 0, 0, 3885, 1),
(69967, 65, 91218, 0, 0, 3885, 1),
(69967, 66, 91220, 0, 0, 3884, 1),
(69967, 67, 91221, 0, 0, 3884, 1),
(69967, 68, 91222, 0, 0, 3886, 1),
(69967, 69, 91224, 0, 0, 3885, 1),
(69967, 70, 91226, 0, 0, 3886, 1),
(69967, 71, 91228, 0, 0, 3886, 1),
(69967, 72, 91230, 0, 0, 3885, 1),
(69967, 73, 91232, 0, 0, 3885, 1),
(69967, 74, 91234, 0, 0, 3886, 1),
(69967, 75, 91236, 0, 0, 3886, 1),
(69967, 76, 91238, 0, 0, 3886, 1),
(69967, 77, 91240, 0, 0, 3885, 1),
(69967, 78, 91242, 0, 0, 3885, 1),
(69967, 79, 91244, 0, 0, 3885, 1),
(69967, 80, 91246, 0, 0, 3884, 1),
(69967, 81, 91247, 0, 0, 3885, 1),
(69967, 82, 91249, 0, 0, 3886, 1),
(69967, 83, 91251, 0, 0, 3886, 1),
(69967, 84, 91253, 0, 0, 3885, 1),
(69967, 85, 91255, 0, 0, 3886, 1),
(69967, 86, 91257, 0, 0, 3885, 1),
(69967, 87, 91259, 0, 0, 3886, 1),
(69967, 88, 91261, 0, 0, 3886, 1),
(69967, 89, 91263, 0, 0, 3885, 1),
(69967, 90, 91265, 0, 0, 3886, 1),
(69967, 91, 91267, 0, 0, 3886, 1),
(69967, 92, 91269, 0, 0, 3885, 1),
(69967, 93, 91271, 0, 0, 3886, 1),
(69967, 94, 91273, 0, 0, 3886, 1),
(69967, 95, 91275, 0, 0, 3885, 1),
(69967, 96, 91277, 0, 0, 3885, 1),
(69967, 97, 91279, 0, 0, 3885, 1),
(69967, 98, 91281, 0, 0, 3885, 1),
(69967, 99, 91283, 0, 0, 3885, 1),
(69967, 100, 91285, 0, 0, 3884, 1),
(69967, 101, 91286, 0, 0, 3884, 1),
(69967, 102, 91287, 0, 0, 3886, 1),
(69967, 103, 91289, 0, 0, 3885, 1),
(69967, 104, 91291, 0, 0, 3886, 1),
(69967, 105, 91293, 0, 0, 3886, 1),
(69967, 106, 91295, 0, 0, 3885, 1),
(69967, 107, 91297, 0, 0, 3885, 1),
(69967, 108, 91299, 0, 0, 3885, 1),
(69967, 109, 91301, 0, 0, 3885, 1),
(69967, 110, 91303, 0, 0, 3885, 1),
(69967, 111, 91305, 0, 0, 3884, 1),
(69967, 112, 91306, 0, 0, 3884, 1),
(69967, 113, 91309, 0, 0, 3885, 1),
(69967, 114, 91311, 0, 0, 3886, 1),
(69967, 115, 91313, 0, 0, 3886, 1),
(69967, 116, 91315, 0, 0, 3886, 1),
(69967, 117, 91317, 0, 0, 3885, 1),
(69967, 118, 91319, 0, 0, 3885, 1),
(69967, 119, 91321, 0, 0, 3886, 1),
(69967, 120, 91323, 0, 0, 3886, 1),
(69967, 121, 91325, 0, 0, 3886, 1),
(69967, 122, 91327, 0, 0, 3885, 1),
(69967, 123, 91335, 0, 0, 3885, 1),
(69967, 124, 91337, 0, 0, 3885, 1),
(69967, 125, 91339, 0, 0, 3884, 1),
(69967, 126, 91340, 0, 0, 3886, 1),
(69967, 127, 91342, 0, 0, 3885, 1),
(69967, 128, 91344, 0, 0, 3886, 1),
(69967, 129, 91346, 0, 0, 3886, 1),
(69967, 130, 91348, 0, 0, 3885, 1),
(69967, 131, 91350, 0, 0, 3885, 1),
(69967, 132, 91352, 0, 0, 3885, 1),
(69967, 133, 91354, 0, 0, 3885, 1),
(69967, 134, 91356, 0, 0, 3884, 1),
(69967, 135, 91357, 0, 0, 3884, 1),
(69967, 136, 91358, 0, 0, 3886, 1),
(69967, 137, 91360, 0, 0, 3885, 1),
(69967, 138, 91362, 0, 0, 3886, 1),
(69967, 139, 91364, 0, 0, 3886, 1),
(69967, 140, 91366, 0, 0, 3885, 1),
(69967, 141, 91368, 0, 0, 3886, 1),
(69967, 142, 91370, 0, 0, 3885, 1),
(69967, 143, 91372, 0, 0, 3886, 1),
(69967, 144, 91374, 0, 0, 3886, 1),
(69967, 145, 91376, 0, 0, 3885, 1),
(69967, 146, 91378, 0, 0, 3885, 1),
(69967, 147, 91380, 0, 0, 3886, 1),
(69967, 148, 91382, 0, 0, 3885, 1),
(69967, 149, 91384, 0, 0, 3886, 1),
(69967, 150, 91386, 0, 0, 3886, 1),
(69967, 151, 91388, 0, 0, 3885, 1),
(69967, 0, 91390, 0, 0, 5218, 1),
(69967, 0, 91392, 0, 0, 5218, 1),
(69967, 0, 91396, 0, 0, 5218, 1),
(69967, 0, 91398, 0, 0, 5221, 1),
(69967, 152, 91400, 0, 0, 3885, 1),
(69967, 153, 91401, 0, 0, 3885, 1),
(69967, 0, 91404, 0, 0, 5218, 1),
(69967, 0, 91406, 0, 0, 5218, 1),
(69967, 0, 91408, 0, 0, 5218, 1),
(69967, 154, 91410, 0, 0, 3885, 1),
(69967, 155, 91411, 0, 0, 3884, 1),
(69967, 156, 91412, 0, 0, 3884, 1),
(69967, 157, 91413, 0, 0, 3884, 1),
(69967, 158, 91414, 0, 0, 3884, 1),
(69967, 159, 91415, 0, 0, 3885, 1),
(69967, 160, 91416, 0, 0, 3884, 1),
(69967, 161, 91417, 0, 0, 3884, 1),
(69967, 197, 91418, 0, 0, 3884, 1),
(69967, 162, 91420, 0, 0, 3885, 1),
(69967, 163, 91422, 0, 0, 3886, 1),
(69967, 164, 91424, 0, 0, 3886, 1),
(69967, 165, 91426, 0, 0, 3886, 1),
(69967, 166, 91428, 0, 0, 3885, 1),
(69967, 167, 91430, 0, 0, 3886, 1),
(69967, 168, 91432, 0, 0, 3885, 1),
(69967, 169, 91434, 0, 0, 3886, 1),
(69967, 170, 91436, 0, 0, 3886, 1),
(69967, 171, 91438, 0, 0, 3885, 1),
(69967, 172, 94361, 0, 0, 3885, 1),
(69967, 173, 94386, 0, 0, 3885, 1),
(69967, 174, 94388, 0, 0, 3885, 1),
(69967, 4, 95349, 0, 0, 4539, 1),
(69967, 1, 98162, 0, 0, 4713, 1),
(69967, 5, 98163, 0, 0, 4709, 1),
(69967, 2, 98164, 0, 0, 4710, 1),
(69967, 6, 98336, 0, 0, 4713, 1),
(69981, 1, 89112, 0, 0, 3373, 1),
(69981, 0, 91440, 0, 0, 3882, 1),
(69981, 0, 91442, 0, 0, 3882, 1),
(69981, 0, 91444, 0, 0, 3882, 1),
(69981, 0, 91446, 0, 0, 4537, 1),
(69981, 0, 91448, 0, 0, 4537, 1),
(69981, 0, 91450, 0, 0, 4537, 1),
(69981, 22, 91452, 0, 0, 3879, 1),
(69981, 23, 91453, 0, 0, 3878, 1),
(69981, 24, 91454, 0, 0, 3878, 1),
(69981, 25, 91455, 0, 0, 3878, 1),
(69981, 26, 91456, 0, 0, 3878, 1),
(69981, 27, 91457, 0, 0, 3879, 1),
(69981, 28, 91458, 0, 0, 3878, 1),
(69981, 29, 91459, 0, 0, 3878, 1),
(69981, 0, 91460, 0, 0, 3882, 1),
(69981, 30, 91462, 0, 0, 3879, 1),
(69981, 31, 91464, 0, 0, 3879, 1),
(69981, 32, 91466, 0, 0, 3879, 1),
(69981, 33, 91468, 0, 0, 3879, 1),
(69981, 34, 91470, 0, 0, 3879, 1),
(69981, 35, 91472, 0, 0, 3879, 1),
(69981, 36, 91474, 0, 0, 3878, 1),
(69981, 37, 91475, 0, 0, 3878, 1),
(69981, 38, 91476, 0, 0, 3878, 1),
(69981, 39, 91477, 0, 0, 3878, 1),
(69981, 40, 91478, 0, 0, 3878, 1),
(69981, 41, 91479, 0, 0, 3878, 1),
(69981, 42, 91480, 0, 0, 3878, 1),
(69981, 43, 91482, 0, 0, 3878, 1),
(69981, 0, 91484, 0, 0, 3881, 1),
(69981, 0, 91486, 0, 0, 3882, 1),
(69981, 44, 91488, 0, 0, 3878, 1),
(69981, 45, 91489, 0, 0, 3878, 1),
(69981, 46, 91490, 0, 0, 3878, 1),
(69981, 47, 91491, 0, 0, 3878, 1),
(69981, 48, 91492, 0, 0, 3878, 1),
(69981, 49, 91493, 0, 0, 3878, 1),
(69981, 50, 91494, 0, 0, 3878, 1),
(69981, 51, 91500, 0, 0, 3880, 1),
(69981, 52, 91502, 0, 0, 3879, 1),
(69981, 53, 91504, 0, 0, 3880, 1),
(69981, 54, 91506, 0, 0, 3880, 1),
(69981, 55, 91508, 0, 0, 3879, 1),
(69981, 56, 91510, 0, 0, 3879, 1),
(69981, 57, 91512, 0, 0, 3880, 1),
(69981, 58, 91514, 0, 0, 3880, 1),
(69981, 59, 91516, 0, 0, 3880, 1),
(69981, 60, 91518, 0, 0, 3879, 1),
(69981, 61, 91520, 0, 0, 3879, 1),
(69981, 62, 91522, 0, 0, 3879, 1),
(69981, 63, 91524, 0, 0, 3878, 1),
(69981, 64, 91525, 0, 0, 3879, 1),
(69981, 65, 91527, 0, 0, 3880, 1),
(69981, 66, 91529, 0, 0, 3880, 1),
(69981, 67, 91531, 0, 0, 3880, 1),
(69981, 68, 91533, 0, 0, 3879, 1),
(69981, 0, 91535, 0, 0, 3882, 1),
(69981, 69, 91537, 0, 0, 3879, 1),
(69981, 70, 91539, 0, 0, 3879, 1),
(69981, 71, 91541, 0, 0, 3878, 1),
(69981, 72, 91542, 0, 0, 3879, 1),
(69981, 73, 91544, 0, 0, 3880, 1),
(69981, 74, 91546, 0, 0, 3880, 1),
(69981, 75, 91548, 0, 0, 3880, 1),
(69981, 76, 91550, 0, 0, 3879, 1),
(69981, 0, 91554, 0, 0, 3882, 1),
(69981, 0, 91556, 0, 0, 3881, 1),
(69981, 77, 91558, 0, 0, 3878, 1),
(69981, 0, 91560, 0, 0, 3882, 1),
(69981, 78, 91562, 0, 0, 3879, 1),
(69981, 79, 91563, 0, 0, 3879, 1),
(69981, 80, 91564, 0, 0, 3879, 1),
(69981, 81, 91565, 0, 0, 3879, 1),
(69981, 82, 91567, 0, 0, 3879, 1),
(69981, 83, 91569, 0, 0, 3879, 1),
(69981, 84, 91571, 0, 0, 3879, 1),
(69981, 85, 91573, 0, 0, 3878, 1),
(69981, 86, 91574, 0, 0, 3878, 1),
(69981, 87, 91575, 0, 0, 3880, 1),
(69981, 88, 91577, 0, 0, 3879, 1),
(69981, 89, 91579, 0, 0, 3880, 1),
(69981, 90, 91581, 0, 0, 3880, 1),
(69981, 91, 91583, 0, 0, 3879, 1),
(69981, 92, 91585, 0, 0, 3879, 1),
(69981, 93, 91587, 0, 0, 3880, 1),
(69981, 94, 91589, 0, 0, 3880, 1),
(69981, 95, 91591, 0, 0, 3880, 1),
(69981, 96, 91593, 0, 0, 3879, 1),
(69981, 97, 91595, 0, 0, 3879, 1),
(69981, 98, 91597, 0, 0, 3879, 1),
(69981, 99, 91599, 0, 0, 3878, 1),
(69981, 100, 91600, 0, 0, 3879, 1),
(69981, 101, 91602, 0, 0, 3880, 1),
(69981, 102, 91604, 0, 0, 3880, 1),
(69981, 103, 91606, 0, 0, 3879, 1),
(69981, 104, 91608, 0, 0, 3880, 1),
(69981, 105, 91610, 0, 0, 3879, 1),
(69981, 106, 91612, 0, 0, 3880, 1),
(69981, 107, 91614, 0, 0, 3880, 1),
(69981, 108, 91616, 0, 0, 3879, 1),
(69981, 109, 91618, 0, 0, 3880, 1),
(69981, 110, 91620, 0, 0, 3880, 1),
(69981, 111, 91622, 0, 0, 3879, 1),
(69981, 112, 91624, 0, 0, 3880, 1),
(69981, 113, 91626, 0, 0, 3880, 1),
(69981, 114, 91628, 0, 0, 3879, 1),
(69981, 115, 91630, 0, 0, 3879, 1),
(69981, 116, 91632, 0, 0, 3879, 1),
(69981, 117, 91634, 0, 0, 3879, 1),
(69981, 118, 91636, 0, 0, 3879, 1),
(69981, 119, 91638, 0, 0, 3878, 1),
(69981, 120, 91639, 0, 0, 3878, 1),
(69981, 121, 91640, 0, 0, 3880, 1),
(69981, 122, 91642, 0, 0, 3879, 1),
(69981, 123, 91644, 0, 0, 3880, 1),
(69981, 124, 91646, 0, 0, 3880, 1),
(69981, 125, 91648, 0, 0, 3879, 1),
(69981, 126, 91650, 0, 0, 3879, 1),
(69981, 127, 91652, 0, 0, 3879, 1),
(69981, 128, 91654, 0, 0, 3879, 1),
(69981, 129, 91656, 0, 0, 3879, 1),
(69981, 130, 91658, 0, 0, 3878, 1),
(69981, 131, 91659, 0, 0, 3878, 1),
(69981, 0, 91660, 0, 0, 3882, 1),
(69981, 132, 91662, 0, 0, 3879, 1),
(69981, 133, 91664, 0, 0, 3880, 1),
(69981, 134, 91666, 0, 0, 3880, 1),
(69981, 135, 91668, 0, 0, 3880, 1),
(69981, 136, 91670, 0, 0, 3879, 1),
(69981, 137, 91672, 0, 0, 3879, 1),
(69981, 138, 91674, 0, 0, 3880, 1),
(69981, 139, 91676, 0, 0, 3880, 1),
(69981, 140, 91678, 0, 0, 3880, 1),
(69981, 141, 91680, 0, 0, 3879, 1),
(69981, 142, 91682, 0, 0, 3879, 1),
(69981, 143, 91684, 0, 0, 3879, 1),
(69981, 144, 91686, 0, 0, 3879, 1),
(69981, 145, 91688, 0, 0, 3879, 1),
(69981, 146, 91690, 0, 0, 3879, 1),
(69981, 147, 91692, 0, 0, 3878, 1),
(69981, 148, 91693, 0, 0, 3880, 1),
(69981, 149, 91695, 0, 0, 3879, 1),
(69981, 150, 91697, 0, 0, 3880, 1),
(69981, 151, 91699, 0, 0, 3880, 1),
(69981, 152, 91701, 0, 0, 3879, 1),
(69981, 153, 91703, 0, 0, 3879, 1),
(69981, 154, 91705, 0, 0, 3879, 1),
(69981, 155, 91707, 0, 0, 3879, 1),
(69981, 156, 91709, 0, 0, 3878, 1),
(69981, 157, 91710, 0, 0, 3878, 1),
(69981, 158, 91711, 0, 0, 3880, 1),
(69981, 159, 91713, 0, 0, 3879, 1),
(69981, 160, 91715, 0, 0, 3880, 1),
(69981, 161, 91717, 0, 0, 3880, 1),
(69981, 162, 91719, 0, 0, 3879, 1),
(69981, 163, 91721, 0, 0, 3880, 1),
(69981, 164, 91723, 0, 0, 3879, 1),
(69981, 165, 91725, 0, 0, 3880, 1),
(69981, 166, 91727, 0, 0, 3880, 1),
(69981, 167, 91729, 0, 0, 3879, 1),
(69981, 168, 91731, 0, 0, 3879, 1),
(69981, 169, 91733, 0, 0, 3880, 1),
(69981, 170, 91735, 0, 0, 3879, 1),
(69981, 171, 91737, 0, 0, 3880, 1),
(69981, 172, 91739, 0, 0, 3880, 1),
(69981, 173, 91741, 0, 0, 3879, 1),
(69981, 0, 91743, 0, 0, 4537, 1),
(69981, 0, 91745, 0, 0, 4537, 1),
(69981, 0, 91749, 0, 0, 4537, 1),
(69981, 174, 91753, 0, 0, 3879, 1),
(69981, 175, 91754, 0, 0, 3879, 1),
(69981, 0, 91757, 0, 0, 4537, 1),
(69981, 0, 91759, 0, 0, 4537, 1),
(69981, 0, 91761, 0, 0, 4537, 1),
(69981, 176, 91763, 0, 0, 3879, 1),
(69981, 177, 91764, 0, 0, 3878, 1),
(69981, 178, 91765, 0, 0, 3878, 1),
(69981, 179, 91766, 0, 0, 3878, 1),
(69981, 180, 91767, 0, 0, 3878, 1),
(69981, 181, 91768, 0, 0, 3879, 1),
(69981, 182, 91769, 0, 0, 3878, 1),
(69981, 183, 91770, 0, 0, 3878, 1),
(69981, 184, 91771, 0, 0, 3878, 1),
(69981, 185, 91773, 0, 0, 3879, 1),
(69981, 186, 91775, 0, 0, 3880, 1),
(69981, 187, 91777, 0, 0, 3880, 1),
(69981, 188, 91779, 0, 0, 3880, 1),
(69981, 189, 91781, 0, 0, 3879, 1),
(69981, 190, 91783, 0, 0, 3880, 1),
(69981, 191, 91785, 0, 0, 3879, 1),
(69981, 192, 91787, 0, 0, 3880, 1),
(69981, 193, 91789, 0, 0, 3880, 1),
(69981, 194, 91791, 0, 0, 3879, 1),
(69982, 1, 89112, 0, 0, 3373, 1),
(69982, 0, 91440, 0, 0, 3882, 1),
(69982, 0, 91442, 0, 0, 3882, 1),
(69982, 0, 91444, 0, 0, 3882, 1),
(69982, 0, 91446, 0, 0, 4537, 1),
(69982, 0, 91448, 0, 0, 4537, 1),
(69982, 0, 91450, 0, 0, 4537, 1),
(69982, 22, 91452, 0, 0, 3879, 1),
(69982, 23, 91453, 0, 0, 3878, 1),
(69982, 24, 91454, 0, 0, 3878, 1),
(69982, 25, 91455, 0, 0, 3878, 1),
(69982, 26, 91456, 0, 0, 3878, 1),
(69982, 27, 91457, 0, 0, 3879, 1),
(69982, 28, 91458, 0, 0, 3878, 1),
(69982, 29, 91459, 0, 0, 3878, 1),
(69982, 0, 91460, 0, 0, 3882, 1),
(69982, 30, 91462, 0, 0, 3879, 1),
(69982, 31, 91464, 0, 0, 3879, 1),
(69982, 32, 91466, 0, 0, 3879, 1),
(69982, 33, 91468, 0, 0, 3879, 1),
(69982, 34, 91470, 0, 0, 3879, 1),
(69982, 35, 91472, 0, 0, 3879, 1),
(69982, 36, 91474, 0, 0, 3878, 1),
(69982, 37, 91475, 0, 0, 3878, 1),
(69982, 38, 91476, 0, 0, 3878, 1),
(69982, 39, 91477, 0, 0, 3878, 1),
(69982, 40, 91478, 0, 0, 3878, 1),
(69982, 41, 91479, 0, 0, 3878, 1),
(69982, 42, 91480, 0, 0, 3878, 1),
(69982, 43, 91482, 0, 0, 3878, 1),
(69982, 0, 91484, 0, 0, 3881, 1),
(69982, 0, 91486, 0, 0, 3882, 1),
(69982, 44, 91488, 0, 0, 3878, 1),
(69982, 45, 91489, 0, 0, 3878, 1),
(69982, 46, 91490, 0, 0, 3878, 1),
(69982, 47, 91491, 0, 0, 3878, 1),
(69982, 48, 91492, 0, 0, 3878, 1),
(69982, 49, 91493, 0, 0, 3878, 1),
(69982, 50, 91494, 0, 0, 3878, 1),
(69982, 51, 91500, 0, 0, 3880, 1),
(69982, 52, 91502, 0, 0, 3879, 1),
(69982, 53, 91504, 0, 0, 3880, 1),
(69982, 54, 91506, 0, 0, 3880, 1),
(69982, 55, 91508, 0, 0, 3879, 1),
(69982, 56, 91510, 0, 0, 3879, 1),
(69982, 57, 91512, 0, 0, 3880, 1),
(69982, 58, 91514, 0, 0, 3880, 1),
(69982, 59, 91516, 0, 0, 3880, 1),
(69982, 60, 91518, 0, 0, 3879, 1),
(69982, 61, 91520, 0, 0, 3879, 1),
(69982, 62, 91522, 0, 0, 3879, 1),
(69982, 63, 91524, 0, 0, 3878, 1),
(69982, 64, 91525, 0, 0, 3879, 1),
(69982, 65, 91527, 0, 0, 3880, 1),
(69982, 66, 91529, 0, 0, 3880, 1),
(69982, 67, 91531, 0, 0, 3880, 1),
(69982, 68, 91533, 0, 0, 3879, 1),
(69982, 0, 91535, 0, 0, 3882, 1),
(69982, 69, 91537, 0, 0, 3879, 1),
(69982, 70, 91539, 0, 0, 3879, 1),
(69982, 71, 91541, 0, 0, 3878, 1),
(69982, 72, 91542, 0, 0, 3879, 1),
(69982, 73, 91544, 0, 0, 3880, 1),
(69982, 74, 91546, 0, 0, 3880, 1),
(69982, 75, 91548, 0, 0, 3880, 1),
(69982, 76, 91550, 0, 0, 3879, 1),
(69982, 0, 91554, 0, 0, 3882, 1),
(69982, 0, 91556, 0, 0, 3881, 1),
(69982, 77, 91558, 0, 0, 3878, 1),
(69982, 0, 91560, 0, 0, 3882, 1),
(69982, 78, 91562, 0, 0, 3879, 1),
(69982, 79, 91563, 0, 0, 3879, 1),
(69982, 80, 91564, 0, 0, 3879, 1),
(69982, 81, 91565, 0, 0, 3879, 1),
(69982, 82, 91567, 0, 0, 3879, 1),
(69982, 83, 91569, 0, 0, 3879, 1),
(69982, 84, 91571, 0, 0, 3879, 1),
(69982, 85, 91573, 0, 0, 3878, 1),
(69982, 86, 91574, 0, 0, 3878, 1),
(69982, 87, 91575, 0, 0, 3880, 1),
(69982, 88, 91577, 0, 0, 3879, 1),
(69982, 89, 91579, 0, 0, 3880, 1),
(69982, 90, 91581, 0, 0, 3880, 1),
(69982, 91, 91583, 0, 0, 3879, 1),
(69982, 92, 91585, 0, 0, 3879, 1),
(69982, 93, 91587, 0, 0, 3880, 1),
(69982, 94, 91589, 0, 0, 3880, 1),
(69982, 95, 91591, 0, 0, 3880, 1),
(69982, 96, 91593, 0, 0, 3879, 1),
(69982, 97, 91595, 0, 0, 3879, 1),
(69982, 98, 91597, 0, 0, 3879, 1),
(69982, 99, 91599, 0, 0, 3878, 1),
(69982, 100, 91600, 0, 0, 3879, 1),
(69982, 101, 91602, 0, 0, 3880, 1),
(69982, 102, 91604, 0, 0, 3880, 1),
(69982, 103, 91606, 0, 0, 3879, 1),
(69982, 104, 91608, 0, 0, 3880, 1),
(69982, 105, 91610, 0, 0, 3879, 1),
(69982, 106, 91612, 0, 0, 3880, 1),
(69982, 107, 91614, 0, 0, 3880, 1),
(69982, 108, 91616, 0, 0, 3879, 1),
(69982, 109, 91618, 0, 0, 3880, 1),
(69982, 110, 91620, 0, 0, 3880, 1),
(69982, 111, 91622, 0, 0, 3879, 1),
(69982, 112, 91624, 0, 0, 3880, 1),
(69982, 113, 91626, 0, 0, 3880, 1),
(69982, 114, 91628, 0, 0, 3879, 1),
(69982, 115, 91630, 0, 0, 3879, 1),
(69982, 116, 91632, 0, 0, 3879, 1),
(69982, 117, 91634, 0, 0, 3879, 1),
(69982, 118, 91636, 0, 0, 3879, 1),
(69982, 119, 91638, 0, 0, 3878, 1),
(69982, 120, 91639, 0, 0, 3878, 1),
(69982, 121, 91640, 0, 0, 3880, 1),
(69982, 122, 91642, 0, 0, 3879, 1),
(69982, 123, 91644, 0, 0, 3880, 1),
(69982, 124, 91646, 0, 0, 3880, 1),
(69982, 125, 91648, 0, 0, 3879, 1),
(69982, 126, 91650, 0, 0, 3879, 1),
(69982, 127, 91652, 0, 0, 3879, 1),
(69982, 128, 91654, 0, 0, 3879, 1),
(69982, 129, 91656, 0, 0, 3879, 1),
(69982, 130, 91658, 0, 0, 3878, 1),
(69982, 131, 91659, 0, 0, 3878, 1),
(69982, 0, 91660, 0, 0, 3882, 1),
(69982, 132, 91662, 0, 0, 3879, 1),
(69982, 133, 91664, 0, 0, 3880, 1),
(69982, 134, 91666, 0, 0, 3880, 1),
(69982, 135, 91668, 0, 0, 3880, 1),
(69982, 136, 91670, 0, 0, 3879, 1),
(69982, 137, 91672, 0, 0, 3879, 1),
(69982, 138, 91674, 0, 0, 3880, 1),
(69982, 139, 91676, 0, 0, 3880, 1),
(69982, 140, 91678, 0, 0, 3880, 1),
(69982, 141, 91680, 0, 0, 3879, 1),
(69982, 0, 91683, 0, 0, 3879, 1),
(69982, 0, 91685, 0, 0, 3879, 1),
(69982, 0, 91687, 0, 0, 3879, 1),
(69982, 145, 91688, 0, 0, 3879, 1),
(69982, 146, 91690, 0, 0, 3879, 1),
(69982, 147, 91692, 0, 0, 3878, 1),
(69982, 148, 91693, 0, 0, 3880, 1),
(69982, 149, 91695, 0, 0, 3879, 1),
(69982, 150, 91697, 0, 0, 3880, 1),
(69982, 151, 91699, 0, 0, 3880, 1),
(69982, 152, 91701, 0, 0, 3879, 1),
(69982, 153, 91703, 0, 0, 3879, 1),
(69982, 154, 91705, 0, 0, 3879, 1),
(69982, 155, 91707, 0, 0, 3879, 1),
(69982, 156, 91709, 0, 0, 3878, 1),
(69982, 157, 91710, 0, 0, 3878, 1),
(69982, 158, 91711, 0, 0, 3880, 1),
(69982, 159, 91713, 0, 0, 3879, 1),
(69982, 160, 91715, 0, 0, 3880, 1),
(69982, 161, 91717, 0, 0, 3880, 1),
(69982, 162, 91719, 0, 0, 3879, 1),
(69982, 163, 91721, 0, 0, 3880, 1),
(69982, 164, 91723, 0, 0, 3879, 1),
(69982, 165, 91725, 0, 0, 3880, 1),
(69982, 166, 91727, 0, 0, 3880, 1),
(69982, 167, 91729, 0, 0, 3879, 1),
(69982, 168, 91731, 0, 0, 3879, 1),
(69982, 169, 91733, 0, 0, 3880, 1),
(69982, 170, 91735, 0, 0, 3879, 1),
(69982, 171, 91737, 0, 0, 3880, 1),
(69982, 172, 91739, 0, 0, 3880, 1),
(69982, 173, 91741, 0, 0, 3879, 1),
(69982, 0, 91743, 0, 0, 4537, 1),
(69982, 0, 91745, 0, 0, 4537, 1),
(69982, 0, 91749, 0, 0, 4537, 1),
(69982, 174, 91753, 0, 0, 3879, 1),
(69982, 175, 91754, 0, 0, 3879, 1),
(69982, 0, 91757, 0, 0, 4537, 1),
(69982, 0, 91759, 0, 0, 4537, 1),
(69982, 0, 91761, 0, 0, 4537, 1),
(69982, 176, 91763, 0, 0, 3879, 1),
(69982, 177, 91764, 0, 0, 3878, 1),
(69982, 178, 91765, 0, 0, 3878, 1),
(69982, 179, 91766, 0, 0, 3878, 1),
(69982, 180, 91767, 0, 0, 3878, 1),
(69982, 181, 91768, 0, 0, 3879, 1),
(69982, 182, 91769, 0, 0, 3878, 1),
(69982, 183, 91770, 0, 0, 3878, 1),
(69982, 184, 91771, 0, 0, 3878, 1),
(69982, 185, 91773, 0, 0, 3879, 1),
(69982, 186, 91775, 0, 0, 3880, 1),
(69982, 187, 91777, 0, 0, 3880, 1),
(69982, 188, 91779, 0, 0, 3880, 1),
(69982, 189, 91781, 0, 0, 3879, 1),
(69982, 190, 91783, 0, 0, 3880, 1),
(69982, 191, 91785, 0, 0, 3879, 1),
(69982, 192, 91787, 0, 0, 3880, 1),
(69982, 193, 91789, 0, 0, 3880, 1),
(69982, 194, 91791, 0, 0, 3879, 1);