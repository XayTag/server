/*
	SkyFactory 4 Remove and Hide Script

	This script handles the removal and hiding of IIngredients.
*/
import crafttweaker.item.IIngredient;

import mods.jei.JEI;

static removeAndHideIngredients as IIngredient[] = [
	// Creative
	<bibliocraft:bookcasecreative:1>,
	<bibliocraft:bookcasecreative:2>,
	<bibliocraft:bookcasecreative:3>,
	<bibliocraft:bookcasecreative:4>,
	<bibliocraft:bookcasecreative:5>,
	<bibliocraft:bookcasecreative:6>,
	<bibliocraft:bookcasecreative>,
	<enderutilities:dolly>,
	<enderutilities:endercapacitor:3>,
	<enderutilities:enderpart:30>,
	<enderutilities:enderpart:81>,
	<vc:airships/item_airship_creative>,
	<vc:modules/item_module_creative>,

	// Misc
	<animalcrops:bush>,
	<astralsorcery:blockportalnode>,
	<astralsorcery:blockportalnode>,
	<baubles:ring>,
	<compactstorage:compactchest:4>,
	<endercrop:ender_crop>,
	<huntingdim:biome_changer>.withTag({HeldBiome: 0}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 2}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 3}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 4}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 5}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 6}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 7}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 8}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 9}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 10}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 11}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 12}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 13}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 14}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 15}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 16}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 17}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 18}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 19}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 20}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 21}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 22}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 23}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 24}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 25}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 26}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 27}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 28}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 29}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 30}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 31}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 32}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 33}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 34}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 35}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 36}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 37}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 38}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 39}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 40}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 41}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 42}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 43}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 44}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 45}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 46}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 47}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 48}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 49}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 50}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 51}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 52}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 53}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 54}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 55}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 56}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 57}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 58}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 59}),
	<huntingdim:biome_changer>.withTag({HeldBiome: 127}),
	<inspirations:materials:7>,
	<mekanism:transmitter:1>.withTag({tier: 0}),
	<mekanism:transmitter:1>.withTag({tier: 1}),
	<mekanism:transmitter:1>.withTag({tier: 2}),
	<mekanism:transmitter:1>.withTag({tier: 3}),
	<mekanism:transmitter:3>.withTag({tier: 0}),
	<mekanism:transmitter:3>.withTag({tier: 1}),
	<mekanism:transmitter:3>.withTag({tier: 2}),
	<mekanism:transmitter:3>.withTag({tier: 3}),
	<mekanism:transmitter:4>.withTag({tier: 0}),
	<mekanism:transmitter:5>.withTag({tier: 0}),
	<mekanism:transmitter>.withTag({tier: 0}),
	<mekanism:transmitter>.withTag({tier: 1}),
	<mekanism:transmitter>.withTag({tier: 2}),
	<mekanism:transmitter>.withTag({tier: 3}),
	<minecraft:command_block_minecart>,
	<mob_grinding_utils:null_sword>,
	<sonarcore:clearstableglass>,
	<sonarcore:reinforceddirtblock>,
	<sonarcore:reinforceddirtbrick>,
	<sonarcore:reinforceddirtbrickfence>,
	<sonarcore:reinforceddirtbrickgate>,
	<sonarcore:reinforceddirtbrickstairs>,
	<sonarcore:reinforceddirtfence>,
	<sonarcore:reinforceddirtgate>,
	<sonarcore:reinforceddirtstairs>,
	<sonarcore:reinforcedstoneblock>,
	<sonarcore:reinforcedstonebrick>,
	<sonarcore:reinforcedstonebrickfence>,
	<sonarcore:reinforcedstonebrickgate>,
	<sonarcore:reinforcedstonebrickstairs>,
	<sonarcore:reinforcedstonefence>,
	<sonarcore:reinforcedstonegate>,
	<sonarcore:reinforcedstonestairs>,
	<sonarcore:stableglass>,
	<sonarcore:stablestone_black>,
	<sonarcore:stablestone_blue>,
	<sonarcore:stablestone_brown>,
	<sonarcore:stablestone_cyan>,
	<sonarcore:stablestone_green>,
	<sonarcore:stablestone_lightblue>,
	<sonarcore:stablestone_lightgrey>,
	<sonarcore:stablestone_lime>,
	<sonarcore:stablestone_magenta>,
	<sonarcore:stablestone_normal>,
	<sonarcore:stablestone_orange>,
	<sonarcore:stablestone_pink>,
	<sonarcore:stablestone_plain>,
	<sonarcore:stablestone_purple>,
	<sonarcore:stablestone_red>,
	<sonarcore:stablestone_yellow>,
	<sonarcore:stablestoneblackrimmed_black>,
	<sonarcore:stablestoneblackrimmed_blue>,
	<sonarcore:stablestoneblackrimmed_brown>,
	<sonarcore:stablestoneblackrimmed_cyan>,
	<sonarcore:stablestoneblackrimmed_green>,
	<sonarcore:stablestoneblackrimmed_lightblue>,
	<sonarcore:stablestoneblackrimmed_lightgrey>,
	<sonarcore:stablestoneblackrimmed_lime>,
	<sonarcore:stablestoneblackrimmed_magenta>,
	<sonarcore:stablestoneblackrimmed_normal>,
	<sonarcore:stablestoneblackrimmed_orange>,
	<sonarcore:stablestoneblackrimmed_pink>,
	<sonarcore:stablestoneblackrimmed_plain>,
	<sonarcore:stablestoneblackrimmed_purple>,
	<sonarcore:stablestoneblackrimmed_red>,
	<sonarcore:stablestoneblackrimmed_yellow>,
	<sonarcore:stablestonerimmed_black>,
	<sonarcore:stablestonerimmed_blue>,
	<sonarcore:stablestonerimmed_brown>,
	<sonarcore:stablestonerimmed_cyan>,
	<sonarcore:stablestonerimmed_green>,
	<sonarcore:stablestonerimmed_lightblue>,
	<sonarcore:stablestonerimmed_lightgrey>,
	<sonarcore:stablestonerimmed_lime>,
	<sonarcore:stablestonerimmed_magenta>,
	<sonarcore:stablestonerimmed_normal>,
	<sonarcore:stablestonerimmed_orange>,
	<sonarcore:stablestonerimmed_pink>,
	<sonarcore:stablestonerimmed_plain>,
	<sonarcore:stablestonerimmed_purple>,
	<sonarcore:stablestonerimmed_red>,
	<sonarcore:stablestonerimmed_yellow>,
	<storagenetwork:remote:1>,
	<storagenetwork:remote:2>,
	<thermalfoundation:bait:1>,
	<thermalfoundation:bait:2>,
	<thermalfoundation:bait>,
	<thermalfoundation:coin:*>,
	<thermalfoundation:fertilizer:2>,
	<thermalfoundation:upgrade:1>,
	<thermalfoundation:upgrade:2>,
	<thermalfoundation:upgrade:3>,
	<thermalfoundation:upgrade:33>,
	<thermalfoundation:upgrade:34>,
	<thermalfoundation:upgrade:35>,
	<thermalfoundation:upgrade:256>,
	<thermalfoundation:upgrade>,
	<torchmaster:mega_torch:1>,
	<nuclearcraft:ore>,
	<nuclearcraft:ore:1>,
	<nuclearcraft:ore:2>,
	<nuclearcraft:dust>,
	<nuclearcraft:dust:1>,
	<nuclearcraft:dust:2>,
	<nuclearcraft:ingot>,
	<nuclearcraft:ingot:1>,
	<nuclearcraft:ingot:2>,
	<nuclearcraft:ingot_block>,
	<nuclearcraft:ingot_block:1>,
	<nuclearcraft:ingot_block:2>,
	<cyclicmagic:end_redstone_ore>,
	<cyclicmagic:end_coal_ore>,
	<cyclicmagic:end_lapis_ore>,
	<cyclicmagic:end_emerald_ore>,
	<cyclicmagic:end_diamond_ore>,
	<cyclicmagic:end_gold_ore>,
	<cyclicmagic:end_iron_ore>,
	<vc:symbols/item_display_symbol>,
	<tconstruct:slime_grass:7>,
	<tconstruct:slime_grass:12>,
	<tconstruct:slime_grass:9>,
	<tconstruct:slime_grass:14>,
	<tconstruct:slime_grass:4>,
	<tconstruct:slime_grass:3>,
	<tconstruct:slime_grass:1>,
	<tconstruct:slime_grass:2>,
	<tconstruct:slime_grass:8>,
	<tconstruct:slime_grass:13>,
	<tconstruct:slime_grass:6>,
	<tconstruct:slime_grass:11>,
	<tconstruct:slime_grass_tall>,
	<tconstruct:slime_grass_tall:4>,
	<tconstruct:slime_grass_tall:8>,
	<tconstruct:slime_grass_tall:1>,
	<tconstruct:slime_grass_tall:5>,
	<tconstruct:slime_grass_tall:9>,
	<tconstruct:slime_vine_blue_end>,
	<tconstruct:slime_vine_blue_mid>,
	<tconstruct:slime_vine_purple_end>,
	<withercrumbs:crumb_star>,
	<pickletweaks:ppm4>,
	<pickletweaks:ppm4:1>,
	<nuclearcraft:fission_controller_idle>,

	//Na na na na na na na na HEY HEY HEY GOODBYE ... to certus quartz
	<appliedenergistics2:certus_quartz_wrench>,
	<appliedenergistics2:certus_quartz_cutting_knife>,
	<appliedenergistics2:crystal_seed>.withTag({progress: 0}),
	<appliedenergistics2:crystal_seed>.withTag({progress: 200}),
	<appliedenergistics2:crystal_seed>.withTag({progress: 400}),
	<appliedenergistics2:charger>,
	<appliedenergistics2:material:2>,
	<appliedenergistics2:material:3>,
	<appliedenergistics2:material:45>,

	//Removing deprecated Extra Cells Fluid items
	<extracells:storage.component:4>,
	<extracells:storage.fluid>,
	<extracells:storage.fluid:1>,
	<extracells:storage.fluid:2>,
	<extracells:storage.fluid:3>,
	<extracells:storage.component:5>,
	<extracells:storage.component:6>,
	<extracells:storage.component:7>,
	<extracells:ecbaseblock>,
	<extracells:part.base>,
	<extracells:part.base:1>,
	<extracells:part.base:2>,
	<extracells:part.base:3>,
	<extracells:part.base:4>,
	<extracells:part.base:5>,
	<extracells:part.base:6>,
	<extracells:part.base:9>,

	//Why doesn't my drying rack work? Because you're not using the drying rack. You're using the display rack
	<tconstruct:rack>,

	//Hiding extras
	//These are extra items that either have a duplicate in another mod
	//or have no use
	<bibliocraft:bookcase>,
	<bibliocraft:bookcase:1>,
	<bibliocraft:bookcase:2>,
	<bibliocraft:bookcase:3>,
	<bibliocraft:bookcase:4>,
	<bibliocraft:bookcase:5>,
	<bibliocraft:bookcase:6>,

	// Remove Iridium
	<thermalfoundation:ore:7>,
	<thermalfoundation:storage:7>,
	<thermalfoundation:material:71>,
	<thermalfoundation:material:135>,
	<thermalfoundation:material:199>,
	<thermalfoundation:material:327>,

	// Remove Constantan
	<conarm:armorforge>.withTag({textureBlock: {id: "thermalfoundation:storage_alloy", Count: 1 as byte, Damage: 4 as short}}),
	<tconstruct:toolforge>.withTag({textureBlock: {id: "thermalfoundation:storage_alloy", Count: 1 as byte, Damage: 4 as short}}),
	<thermalfoundation:material:100>,
	<thermalfoundation:material:164>,
	<thermalfoundation:material:228>,
	<thermalfoundation:material:356>,
	<thermalfoundation:storage_alloy:4>,

	<thermalfoundation:material:27>,
	<thermalfoundation:material:256>,
	<thermalfoundation:material:257>,
	<thermalfoundation:material:258>,
	<thermalfoundation:material:259>,
	<thermalfoundation:material:260>,
	<thermalfoundation:material:261>,
	<thermalfoundation:material:262>,
	<thermalfoundation:material:263>,
	<thermalfoundation:material:264>,
	<thermalfoundation:material:288>,
	<thermalfoundation:material:291>,
	<thermalfoundation:material:292>,
	<thermalfoundation:material:294>,
	<thermalfoundation:dye>,
	<thermalfoundation:dye:1>,
	<thermalfoundation:dye:2>,
	<thermalfoundation:dye:3>,
	<thermalfoundation:dye:4>,
	<thermalfoundation:dye:5>,
	<thermalfoundation:dye:6>,
	<thermalfoundation:dye:7>,
	<thermalfoundation:dye:8>,
	<thermalfoundation:dye:9>,
	<thermalfoundation:dye:10>,
	<thermalfoundation:dye:11>,
	<thermalfoundation:dye:12>,
	<thermalfoundation:dye:13>,
	<thermalfoundation:dye:14>,
	<thermalfoundation:dye:15>,
	<thermalfoundation:security>,
	<thermalfoundation:geode>,
	<thermalfoundation:material:865>,
	<thermalfoundation:material:866>,
	<thermalfoundation:material:816>,
	<thermalfoundation:material:817>,
	<thermalfoundation:material:818>,
	<thermalfoundation:material:819>,
	<thermalfoundation:material:832>,
	<thermalfoundation:material:833>,

	//No.
	<compactstorage:barrel>,
	<compactstorage:barrel_fluid>,

	//Not needed
	<pickletweaks:constantan_paxel>,
	<pickletweaks:copper_sword>,
	<pickletweaks:copper_pickaxe>,
	<pickletweaks:copper_shovel>,
	<pickletweaks:copper_axe>,
	<pickletweaks:copper_hoe>,
	<pickletweaks:bronze_sword>,
	<pickletweaks:bronze_pickaxe>,
	<pickletweaks:bronze_shovel>,
	<pickletweaks:bronze_axe>,
	<pickletweaks:bronze_hoe>,
	<pickletweaks:hammer>,

	//Not configurable and allows for exploits
	<mekanism:cardboardbox>,

	<thermalfoundation:material:512>,
	<thermalfoundation:material:513>,
	<thermalfoundation:material:514>,

	<thermalfoundation:glass_alloy:4>,
	<thermalfoundation:glass:7>,
	<thermalfoundation:glass:8>,
	<huntingdim:frame>,
	<huntingdim:portal>,
	<tp:colored_glowstone:*>,
	<tp:colored_dust:*>,
	<tp:colored_lamp:*>,

	<inspirations:mulch>,
	<extendedcrafting:crafting_table>,
	<thermalfoundation:material:22>,
	<thermalfoundation:material:23>,
	<mystcraft:glasses>,
	<projecte:item.pe_fire_projectile>,
	<projecte:item.pe_wind_projectile>,
	<tp:blueberry_bush>,
	<tp:maloberry_bush>,
	<tp:raspberry_bush>,
	<tp:blackberry_bush>,
	<thermalfoundation:storage_resource:1>,
	<thermalfoundation:material:802>,
	<realfilingcabinet:upgrade:1>,
	<contenttweaker:compact_machine_twilight_forest_wall>,
	<contenttweaker:compact_machine_lost_cities_wall>,
	<contenttweaker:compact_machine_nether_wall>,
	<contenttweaker:compact_machine_end_wall>,
	<contenttweaker:compact_machine_hunting_dimension_wall>,
	<minecraft:knowledge_book>,
	<morebuckets:aluminum_bucket>,
	<nuclearcraft:ingot_block:12>,
	<nuclearcraft:turbine_dynamo_coil:2>,
	<nuclearcraft:ingot:12>,
	<nuclearcraft:dust:12>,
	<pickletweaks:aluminum_paxel>,
	<thermalfoundation:ore:4>,
	<thermalfoundation:storage:4>,
	<thermalfoundation:glass:4>,
	<thermalfoundation:material:68>,
	<thermalfoundation:material:132>,
	<thermalfoundation:material:196>,
	<thermalfoundation:material:324>,
	<tconstruct:fancy_frame:1>,
	<tconstruct:nuggets:5>,
	<tconstruct:ingots:5>,
	<tconstruct:metal:5>,
	<industrialforegoing:black_hole_controller>,
	<guideapi:cyclicmagic-guide>,
	<tcomplement:materials:10>,
	<tcomplement:materials:20>,

	// AE Lumen Paintballs
	<appliedenergistics2:paint_ball:20>,
	<appliedenergistics2:paint_ball:21>,
	<appliedenergistics2:paint_ball:22>,
	<appliedenergistics2:paint_ball:23>,
	<appliedenergistics2:paint_ball:24>,
	<appliedenergistics2:paint_ball:25>,
	<appliedenergistics2:paint_ball:26>,
	<appliedenergistics2:paint_ball:27>,
	<appliedenergistics2:paint_ball:28>,
	<appliedenergistics2:paint_ball:29>,
	<appliedenergistics2:paint_ball:30>,
	<appliedenergistics2:paint_ball:31>,
	<appliedenergistics2:paint_ball:32>,
	<appliedenergistics2:paint_ball:33>,
	<appliedenergistics2:paint_ball:34>,
	<appliedenergistics2:paint_ball:35>,

	<ceramics:unfired_clay:6>
];

function init() {
	for ingredient in removeAndHideIngredients {
		JEI.removeAndHide(ingredient);
	}
}
