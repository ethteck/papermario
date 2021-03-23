#include "common.h"
#include "map.h"

void N(UnkNpcAIFunc19)(ScriptInstance* script, NpcAISettings* aiSettings, s32 arg2) {
    Enemy* enemy = script->owner1.enemy;
    Npc* npc = get_npc_unsafe(enemy->npcID);

    if (npc->duration > 0) {
        npc->duration--;
    }

    if (npc->unk_8C == 0 && npc->duration <= 0) {
        npc->duration = 8;
        npc->currentAnim = enemy->animList[11];
        script->functionTemp[0].s = 51;
    }
}
