#priority 8

//remove
recipes.remove(<botania:enderdagger>);
recipes.remove(<botania:altar>);

//add

//Consuming negative amount of mana results in adding mana to the pool
mods.botania.ManaInfusion.addInfusion(<minecraft:bucket>, <forge:bucketfilled>.withTag({FluidName: "mana_fluid", Amount: 1000}), -1000);

//Changed soulscribe recipe
recipes.addShapedMirrored(<botania:enderdagger>, [[null, <tconstruct:knife_blade>.withTag({Material: "endstone"}), null],[<botania:manaresource:1>, <tconstruct:binding>.withTag({Material: "endstone"}), <deepmoblearning:living_matter_extraterrestrial>], [null, <botania:manaresource:3>, null]]);

//Create cobblestone with end stone
mods.botania.PureDaisy.addRecipe(<minecraft:end_stone>, <minecraft:cobblestone>, 300);
//Create mushrooms with enbiotic
mods.botania.PureDaisy.addRecipe(<stygian:endglow>, <minecraft:brown_mushroom>, 300);

//Petal Apothecary now requires end stone
<ore:petal>.addItems([<botania:petal:*>, <botania:mushroom:*>]);
recipes.addShaped(<botania:altar>, [[<minecraft:purpur_slab>, <ore:petal>, <minecraft:purpur_slab>],[null, <minecraft:end_stone>, null], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);

//Add end seeds to the ore dictionary so it works in the petal apothecary
<ore:seed>.addItems([<contenttweaker:end_seeds>]);

//Pure Daisy can turn end acid into water(ice cause it's block only)
mods.botania.PureDaisy.addRecipe(<liquid:endacid>, <minecraft:ice>, 600);

//Ender Iron Chunk recipe
mods.botania.ManaInfusion.addInfusion(<contenttweaker:end_iron_chunk>, <contenttweaker:end_iron>, 2500);

//Crude Blast Furnace block recipe
mods.botania.RuneAltar.addRecipe(<immersiveengineering:stone_decoration:1> * 3,[<minecraft:brick_block>, <tconstruct:firewood:1>, <contenttweaker:end_iron_chunk>], 5200);

//Alternative Fire Rune recipe
mods.botania.RuneAltar.addRecipe(<botania:rune:1> * 2,[<botania:manaresource:23>, <botania:manaresource>, <tconstruct:firewood:1>, <minecraft:gunpowder>, <minecraft:dragon_breath>], 6000);

//Alternative Air Rune recipe
mods.botania.RuneAltar.addRecipe(<botania:rune:3> * 2,[<botania:manaresource:23>, <botania:manaresource>, <minecraft:carpet:*>, <tconstruct:sharpening_kit>.withTag({Material: "paper"}), <minecraft:string>], 6000);

//Elven trade for unlocking the nether
mods.botania.ElvenTrade.addRecipe([<contenttweaker:nether_book>], [<minecraft:book>]);

//Alternative natura pylon recipe
recipes.addShaped(<botania:pylon:1>, [[null, <botania:manaresource:18>, null],[<botania:manaresource:18>, <botania:pylon>, <botania:manaresource:18>], [null, <extrautils2:ingredients:2>, null]]);

//Alternative glow living wood recipe
recipes.addShapeless(<botania:livingwood:5>, [<botania:livingwood>,<stygian:endglow>]);