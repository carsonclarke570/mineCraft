/*
mob.h

A model for Mob[ile]s, any Player or AI conrolled entity.

*/
#ifndef MOB_H
#define MOB_H

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

#include "common.h"
#include "entity.h"



typedef struct {
    uint16_t mobID; // Mob ID (defines base characteristics)
    Entity *entity; // base physical model
    uint8_t *tags;  // dynamic state/metadata
} Mob;



typedef struct {
    uint8_t collectiveID; // Collective ID
    double pos[2];        // Chunk relative 'origin' location
    double vel[2];        // Chunk relative 'origin' velocity
    uint8_t memberCount;  // number of members
    Mob *members;         // managed Mobs
    uint8_t *tags;        // dynamic state/metadata
} Collective;



/*
Function Prototypes
*/
void allocate_mob(Mob *mob);
void free_mob(Mob *mob);

void allocate_collective(Collective *collective);
void free_collective(Collective *collective);



// utility
//void find_path(Mob *mob, Mob *target, double distance);
//void find_path(Mob *mob, uint64_t x, uint64t y, double distance);

void no_ai(void *ptr);

// Mob AIs
void bat_ai(Mob *mob);
void blaze_ai(Mob *mob);
void cat_ai(Mob *mob);
void cave_spider_ai(Mob *mob);
void chicken_ai(Mob *mob);
void cod_ai(Mob *mob);
void cow_ai(Mob *mob);
void creeper_ai(Mob *mob);
void dolphin_ai(Mob *mob);
void donkey_ai(Mob *mob);
void drowned_ai(Mob *mob);
void elder_guardian_ai(Mob *mob);
void ender_dragon_ai(Mob *mob);
void enderman_ai(Mob *mob);
void endermite_ai(Mob *mob);
void evoker_ai(Mob *mob);
void ghast_ai(Mob *mob);
void giant_ai(Mob *mob);
void guardian_ai(Mob *mob);
void horse_ai(Mob *mob);
void husk_ai(Mob *mob);
void illusioner_ai(Mob *mob);
void iron_golem_ai(Mob *mob);
void llama_ai(Mob *mob);
void magma_cube_ai(Mob *mob);
void mooshroom_ai(Mob *mob);
void mule_ai(Mob *mob);
void ocelot_ai(Mob *mob);
void panda_ai(Mob *mob);
void parrot_ai(Mob *mob);
void phantom_ai(Mob *mob);
void pig_ai(Mob *mob);
void pillager_ai(Mob *mob);
void polar_bear_ai(Mob *mob);
void pufferfish_ai(Mob *mob);
void rabbit_ai(Mob *mob);
void ravager_ai(Mob *mob);
void salmon_ai(Mob *mob);
void sheep_ai(Mob *mob);
void shulker_ai(Mob *mob);
void silverfish_ai(Mob *mob);
void skeleton_ai(Mob *mob);
void skeleton_horse_ai(Mob *mob);
void slime_ai(Mob *mob);
void snow_golem_ai(Mob *mob);
void spider_ai(Mob *mob);
void squid_ai(Mob *mob);
void stray_ai(Mob *mob);
void trader_llama_ai(Mob *mob);
void tropical_fish_ai(Mob *mob);
void turtle_ai(Mob *mob);
void vex_ai(Mob *mob);
void villager_ai(Mob *mob);
void vindicator_ai(Mob *mob);
void wandering_trader_ai(Mob *mob);
void witch_ai(Mob *mob);
void whither_ai(Mob *mob);
void whither_skeleton_ai(Mob *mob);
void wolf_ai(Mob *mob);
void zombie_ai(Mob *mob);
void zombie_horse_ai(Mob *mob);
void zombie_pigman_ai(Mob *mob);
void zombie_villager_ai(Mob *mob);


// Collective AIs
void guards_ai(Collective *collective);   // stationed defense
void patrol_ai(Collective *collective);   // perimeter defense
void raiders_ai(Collective *collective);  // perimeter offense
void army_ai(Collective *collective);     // offensive force
void village_ai(Collective *collective);  // manages an entire village
void miners_ai(Collective *collective);   // underground resources
void farmers_ai(Collective *collective);  // sustainable crops/cattle
void foragers_ai(Collective *collective); // above ground resources
void builders_ai(Collective *collective); // structure management

void herd_ai(Collective *collective);     // passive land mobs
void school_ai(Collective *collective);   // passive water mobs
void flock_ai(Collective *collective);    // passive air mobs


/*
Global
*/

// Mob AI handlers
void (*mob_ai[])(Mob *) = {
    bat_ai,
    blaze_ai,
    cat_ai,
    cave_spider_ai,
    chicken_ai,
    cod_ai,
    cow_ai,
    creeper_ai,
    dolphin_ai,
    donkey_ai,
    drowned_ai,
    elder_guardian_ai,
    ender_dragon_ai,
    enderman_ai,
    endermite_ai,
    evoker_ai,
    ghast_ai,
    giant_ai,
    guardian_ai,
    horse_ai,
    husk_ai,
    illusioner_ai,
    iron_golem_ai,
    llama_ai,
    magma_cube_ai,
    mooshroom_ai,
    mule_ai,
    ocelot_ai,
    panda_ai,
    parrot_ai,
    phantom_ai,
    pig_ai,
    pillager_ai,
    polar_bear_ai,
    pufferfish_ai,
    rabbit_ai,
    ravager_ai,
    salmon_ai,
    sheep_ai,
    shulker_ai,
    silverfish_ai,
    skeleton_ai,
    skeleton_horse_ai,
    slime_ai,
    snow_golem_ai,
    spider_ai,
    squid_ai,
    stray_ai,
    trader_llama_ai,
    tropical_fish_ai,
    turtle_ai,
    vex_ai,
    villager_ai,
    vindicator_ai,
    wandering_trader_ai,
    witch_ai,
    whither_ai,
    whither_skeleton_ai,
    wolf_ai,
    zombie_ai,
    zombie_horse_ai,
    zombie_pigman_ai,
    zombie_villager_ai
};


// Global Collective AI handlers
void (*collective_ai[])(Collective *) = {
    guards_ai,
    patrol_ai,
    army_ai,
    miners_ai,
    farmers_ai,
    foragers_ai,
    builders_ai,
    herd_ai,
    school_ai,
    flock_ai
};



#endif



