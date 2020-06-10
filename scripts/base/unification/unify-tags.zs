#priority 899

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

var materials as MCTag[string][string] = {
    "iron": {
        "ore_deposits": <tag:forge:ore_deposits/iron>,
        "dust": <tag:forge:dusts/iron>,
        "gear": <tag:forge:gears/iron>,
        "plate": <tag:forge:plates/iron>,
        "rod": <tag:forge:rods/iron>,
        "dirty_dust": <tag:forge:dirty_dusts/iron>,
        "clump": <tag:forge:clumps/iron>,
        "shard": <tag:forge:shards/iron>,
        "crystal": <tag:forge:crystals/iron>,
    },

    "gold": {
        "nugget": <tag:forge:nuggets/gold>,
        "ingot": <tag:forge:ingots/gold>,
        "gem": <tag:forge:gems/gold>,
        "storage_block": <tag:forge:storage_blocks/gold>,
        "ore": <tag:forge:ores/gold>,
        "ore_deposits": <tag:forge:ore_deposits/gold>,
        "dust": <tag:forge:dusts/gold>,
        "gear": <tag:forge:gears/gold>,
        "plate": <tag:forge:plates/gold>,
        "rod": <tag:forge:rods/gold>,
        "dirty_dust": <tag:forge:dirty_dusts/gold>,
        "clump": <tag:forge:clumps/gold>,
        "shard": <tag:forge:shards/gold>,
        "crystal": <tag:forge:crystals/gold>,
    },

    "copper": {
        "nugget": <tag:forge:nuggets/copper>,
        "ingot": <tag:forge:ingots/copper>,
        "gem": <tag:forge:gems/copper>,
        "storage_block": <tag:forge:storage_blocks/copper>,
        "ore": <tag:forge:ores/copper>,
        "ore_deposits": <tag:forge:ore_deposits/copper>,
        "dust": <tag:forge:dusts/copper>,
        "gear": <tag:forge:gears/copper>,
        "plate": <tag:forge:plates/copper>,
        "rod": <tag:forge:rods/copper>,
        "dirty_dust": <tag:forge:dirty_dusts/copper>,
        "clump": <tag:forge:clumps/copper>,
        "shard": <tag:forge:shards/copper>,
        "crystal": <tag:forge:crystals/copper>,
    },

    "silver": {
        "nugget": <tag:forge:nuggets/silver>,
        "ingot": <tag:forge:ingots/silver>,
        "gem": <tag:forge:gems/silver>,
        "storage_block": <tag:forge:storage_blocks/silver>,
        "ore": <tag:forge:ores/silver>,
        "ore_deposits": <tag:forge:ore_deposits/silver>,
        "dust": <tag:forge:dusts/silver>,
        "gear": <tag:forge:gears/silver>,
        "plate": <tag:forge:plates/silver>,
        "rod": <tag:forge:rods/silver>,
        "dirty_dust": <tag:forge:dirty_dusts/silver>,
        "clump": <tag:forge:clumps/silver>,
        "shard": <tag:forge:shards/silver>,
        "crystal": <tag:forge:crystals/silver>,
    },

    "zinc": {
        "nugget": <tag:forge:nuggets/zinc>,
        "ingot": <tag:forge:ingots/zinc>,
        "gem": <tag:forge:gems/zinc>,
        "storage_block": <tag:forge:storage_blocks/zinc>,
        "ore": <tag:forge:ores/zinc>,
        "ore_deposits": <tag:forge:ore_deposits/zinc>,
        "dust": <tag:forge:dusts/zinc>,
        "gear": <tag:forge:gears/zinc>,
        "plate": <tag:forge:plates/zinc>,
        "rod": <tag:forge:rods/zinc>,
        "dirty_dust": <tag:forge:dirty_dusts/zinc>,
        "clump": <tag:forge:clumps/zinc>,
        "shard": <tag:forge:shards/zinc>,
        "crystal": <tag:forge:crystals/zinc>,
    },

    "brass": {
        "nugget": <tag:forge:nuggets/brass>,
        "ingot": <tag:forge:ingots/brass>,
        "gem": <tag:forge:gems/brass>,
        "storage_block": <tag:forge:storage_blocks/brass>,
        "ore": <tag:forge:ores/brass>,
        "ore_deposits": <tag:forge:ore_deposits/brass>,
        "dust": <tag:forge:dusts/brass>,
        "gear": <tag:forge:gears/brass>,
        "plate": <tag:forge:plates/brass>,
        "rod": <tag:forge:rods/brass>,
        "dirty_dust": <tag:forge:dirty_dusts/brass>,
        "clump": <tag:forge:clumps/brass>,
        "shard": <tag:forge:shards/brass>,
        "crystal": <tag:forge:crystals/brass>,
    },

    "tungsten": {
        "nugget": <tag:forge:nuggets/tungsten>,
        "ingot": <tag:forge:ingots/tungsten>,
        "gem": <tag:forge:gems/tungsten>,
        "storage_block": <tag:forge:storage_blocks/tungsten>,
        "ore": <tag:forge:ores/tungsten>,
        "ore_deposits": <tag:forge:ore_deposits/tungsten>,
        "dust": <tag:forge:dusts/tungsten>,
        "gear": <tag:forge:gears/tungsten>,
        "plate": <tag:forge:plates/tungsten>,
        "rod": <tag:forge:rods/tungsten>,
        "dirty_dust": <tag:forge:dirty_dusts/tungsten>,
        "clump": <tag:forge:clumps/tungsten>,
        "shard": <tag:forge:shards/tungsten>,
        "crystal": <tag:forge:crystals/tungsten>,
    },

    "lead": {
        "nugget": <tag:forge:nuggets/lead>,
        "ingot": <tag:forge:ingots/lead>,
        "gem": <tag:forge:gems/lead>,
        "storage_block": <tag:forge:storage_blocks/lead>,
        "ore": <tag:forge:ores/lead>,
        "ore_deposits": <tag:forge:ore_deposits/lead>,
        "dust": <tag:forge:dusts/lead>,
        "gear": <tag:forge:gears/lead>,
        "plate": <tag:forge:plates/lead>,
        "rod": <tag:forge:rods/lead>,
        "dirty_dust": <tag:forge:dirty_dusts/lead>,
        "clump": <tag:forge:clumps/lead>,
        "shard": <tag:forge:shards/lead>,
        "crystal": <tag:forge:crystals/lead>,
    },

    "quicksilver": {
        "nugget": <tag:forge:nuggets/quicksilver>,
        "ingot": <tag:forge:ingots/quicksilver>,
        "gem": <tag:forge:gems/quicksilver>,
        "storage_block": <tag:forge:storage_blocks/quicksilver>,
        "ore": <tag:forge:ores/quicksilver>,
        "ore_deposits": <tag:forge:ore_deposits/quicksilver>,
        "dust": <tag:forge:dusts/quicksilver>,
        "gear": <tag:forge:gears/quicksilver>,
        "plate": <tag:forge:plates/quicksilver>,
        "rod": <tag:forge:rods/quicksilver>,
        "dirty_dust": <tag:forge:dirty_dusts/quicksilver>,
        "clump": <tag:forge:clumps/quicksilver>,
        "shard": <tag:forge:shards/quicksilver>,
        "crystal": <tag:forge:crystals/quicksilver>,
    },

    "tin": {
        "nugget": <tag:forge:nuggets/tin>,
        "ingot": <tag:forge:ingots/tin>,
        "gem": <tag:forge:gems/tin>,
        "storage_block": <tag:forge:storage_blocks/tin>,
        "ore": <tag:forge:ores/tin>,
        "ore_deposits": <tag:forge:ore_deposits/tin>,
        "dust": <tag:forge:dusts/tin>,
        "gear": <tag:forge:gears/tin>,
        "plate": <tag:forge:plates/tin>,
        "rod": <tag:forge:rods/tin>,
        "dirty_dust": <tag:forge:dirty_dusts/tin>,
        "clump": <tag:forge:clumps/tin>,
        "shard": <tag:forge:shards/tin>,
        "crystal": <tag:forge:crystals/tin>,
    },

    "redstone_alloy": {
        "nugget": <tag:forge:nuggets/redstone_alloy>,
        "ingot": <tag:forge:ingots/redstone_alloy>,
        "gem": <tag:forge:gems/redstone_alloy>,
        "storage_block": <tag:forge:storage_blocks/redstone_alloy>,
        "ore": <tag:forge:ores/redstone_alloy>,
        "ore_deposits": <tag:forge:ore_deposits/redstone_alloy>,
        "dust": <tag:forge:dusts/redstone_alloy>,
        "gear": <tag:forge:gears/redstone_alloy>,
        "plate": <tag:forge:plates/redstone_alloy>,
        "rod": <tag:forge:rods/redstone_alloy>,
        "dirty_dust": <tag:forge:dirty_dusts/redstone_alloy>,
        "clump": <tag:forge:clumps/redstone_alloy>,
        "shard": <tag:forge:shards/redstone_alloy>,
        "crystal": <tag:forge:crystals/redstone_alloy>,
    },

    "refined_iron": {
        "nugget": <tag:forge:nuggets/refined_iron>,
        "ingot": <tag:forge:ingots/refined_iron>,
        "gem": <tag:forge:gems/refined_iron>,
        "storage_block": <tag:forge:storage_blocks/refined_iron>,
        "ore": <tag:forge:ores/refined_iron>,
        "ore_deposits": <tag:forge:ore_deposits/refined_iron>,
        "dust": <tag:forge:dusts/refined_iron>,
        "gear": <tag:forge:gears/refined_iron>,
        "plate": <tag:forge:plates/refined_iron>,
        "rod": <tag:forge:rods/refined_iron>,
        "dirty_dust": <tag:forge:dirty_dusts/refined_iron>,
        "clump": <tag:forge:clumps/refined_iron>,
        "shard": <tag:forge:shards/refined_iron>,
        "crystal": <tag:forge:crystals/refined_iron>,
    },

    "compressed_iron": {
        "nugget": <tag:forge:nuggets/compressed_iron>,
        "ingot": <tag:forge:ingots/compressed_iron>,
        "gem": <tag:forge:gems/compressed_iron>,
        "storage_block": <tag:forge:storage_blocks/compressed_iron>,
        "ore": <tag:forge:ores/compressed_iron>,
        "ore_deposits": <tag:forge:ore_deposits/compressed_iron>,
        "dust": <tag:forge:dusts/compressed_iron>,
        "gear": <tag:forge:gears/compressed_iron>,
        "plate": <tag:forge:plates/compressed_iron>,
        "rod": <tag:forge:rods/compressed_iron>,
        "dirty_dust": <tag:forge:dirty_dusts/compressed_iron>,
        "clump": <tag:forge:clumps/compressed_iron>,
        "shard": <tag:forge:shards/compressed_iron>,
        "crystal": <tag:forge:crystals/compressed_iron>,
    },

    "nickel": {
        "nugget": <tag:forge:nuggets/nickel>,
        "ingot": <tag:forge:ingots/nickel>,
        "gem": <tag:forge:gems/nickel>,
        "storage_block": <tag:forge:storage_blocks/nickel>,
        "ore": <tag:forge:ores/nickel>,
        "ore_deposits": <tag:forge:ore_deposits/nickel>,
        "dust": <tag:forge:dusts/nickel>,
        "gear": <tag:forge:gears/nickel>,
        "plate": <tag:forge:plates/nickel>,
        "rod": <tag:forge:rods/nickel>,
        "dirty_dust": <tag:forge:dirty_dusts/nickel>,
        "clump": <tag:forge:clumps/nickel>,
        "shard": <tag:forge:shards/nickel>,
        "crystal": <tag:forge:crystals/nickel>,
    },

    "platinum": {
        "nugget": <tag:forge:nuggets/platinum>,
        "ingot": <tag:forge:ingots/platinum>,
        "gem": <tag:forge:gems/platinum>,
        "storage_block": <tag:forge:storage_blocks/platinum>,
        "ore": <tag:forge:ores/platinum>,
        "ore_deposits": <tag:forge:ore_deposits/platinum>,
        "dust": <tag:forge:dusts/platinum>,
        "gear": <tag:forge:gears/platinum>,
        "plate": <tag:forge:plates/platinum>,
        "rod": <tag:forge:rods/platinum>,
        "dirty_dust": <tag:forge:dirty_dusts/platinum>,
        "clump": <tag:forge:clumps/platinum>,
        "shard": <tag:forge:shards/platinum>,
        "crystal": <tag:forge:crystals/platinum>,
    },

    "bismuth": {
        "nugget": <tag:forge:nuggets/bismuth>,
        "ingot": <tag:forge:ingots/bismuth>,
        "gem": <tag:forge:gems/bismuth>,
        "storage_block": <tag:forge:storage_blocks/bismuth>,
        "ore": <tag:forge:ores/bismuth>,
        "ore_deposits": <tag:forge:ore_deposits/bismuth>,
        "dust": <tag:forge:dusts/bismuth>,
        "gear": <tag:forge:gears/bismuth>,
        "plate": <tag:forge:plates/bismuth>,
        "rod": <tag:forge:rods/bismuth>,
        "dirty_dust": <tag:forge:dirty_dusts/bismuth>,
        "clump": <tag:forge:clumps/bismuth>,
        "shard": <tag:forge:shards/bismuth>,
        "crystal": <tag:forge:crystals/bismuth>,
    },

    "aluminum": {
        "nugget": <tag:forge:nuggets/aluminum>,
        "ingot": <tag:forge:ingots/aluminum>,
        "gem": <tag:forge:gems/aluminum>,
        "storage_block": <tag:forge:storage_blocks/aluminum>,
        "ore": <tag:forge:ores/aluminum>,
        "ore_deposits": <tag:forge:ore_deposits/aluminum>,
        "dust": <tag:forge:dusts/aluminum>,
        "gear": <tag:forge:gears/aluminum>,
        "plate": <tag:forge:plates/aluminum>,
        "rod": <tag:forge:rods/aluminum>,
        "dirty_dust": <tag:forge:dirty_dusts/aluminum>,
        "clump": <tag:forge:clumps/aluminum>,
        "shard": <tag:forge:shards/aluminum>,
        "crystal": <tag:forge:crystals/aluminum>,
    },

    "uranium": {
        "nugget": <tag:forge:nuggets/uranium>,
        "ingot": <tag:forge:ingots/uranium>,
        "gem": <tag:forge:gems/uranium>,
        "storage_block": <tag:forge:storage_blocks/uranium>,
        "ore": <tag:forge:ores/uranium>,
        "ore_deposits": <tag:forge:ore_deposits/uranium>,
        "dust": <tag:forge:dusts/uranium>,
        "gear": <tag:forge:gears/uranium>,
        "plate": <tag:forge:plates/uranium>,
        "rod": <tag:forge:rods/uranium>,
        "dirty_dust": <tag:forge:dirty_dusts/uranium>,
        "clump": <tag:forge:clumps/uranium>,
        "shard": <tag:forge:shards/uranium>,
        "crystal": <tag:forge:crystals/uranium>,
    },

    "uraninite": {
        "nugget": <tag:forge:nuggets/uraninite>,
        "ingot": <tag:forge:ingots/uraninite>,
        "gem": <tag:forge:gems/uraninite>,
        "storage_block": <tag:forge:storage_blocks/uraninite>,
        "ore": <tag:forge:ores/uraninite>,
        "ore_deposits": <tag:forge:ore_deposits/uraninite>,
        "dust": <tag:forge:dusts/uraninite>,
        "gear": <tag:forge:gears/uraninite>,
        "plate": <tag:forge:plates/uraninite>,
        "rod": <tag:forge:rods/uraninite>,
        "dirty_dust": <tag:forge:dirty_dusts/uraninite>,
        "clump": <tag:forge:clumps/uraninite>,
        "shard": <tag:forge:shards/uraninite>,
        "crystal": <tag:forge:crystals/uraninite>,
    },

    "bronze": {
        "nugget": <tag:forge:nuggets/bronze>,
        "ingot": <tag:forge:ingots/bronze>,
        "gem": <tag:forge:gems/bronze>,
        "storage_block": <tag:forge:storage_blocks/bronze>,
        "ore": <tag:forge:ores/bronze>,
        "ore_deposits": <tag:forge:ore_deposits/bronze>,
        "dust": <tag:forge:dusts/bronze>,
        "gear": <tag:forge:gears/bronze>,
        "plate": <tag:forge:plates/bronze>,
        "rod": <tag:forge:rods/bronze>,
        "dirty_dust": <tag:forge:dirty_dusts/bronze>,
        "clump": <tag:forge:clumps/bronze>,
        "shard": <tag:forge:shards/bronze>,
        "crystal": <tag:forge:crystals/bronze>,
    },

    "invar": {
        "nugget": <tag:forge:nuggets/invar>,
        "ingot": <tag:forge:ingots/invar>,
        "gem": <tag:forge:gems/invar>,
        "storage_block": <tag:forge:storage_blocks/invar>,
        "ore": <tag:forge:ores/invar>,
        "ore_deposits": <tag:forge:ore_deposits/invar>,
        "dust": <tag:forge:dusts/invar>,
        "gear": <tag:forge:gears/invar>,
        "plate": <tag:forge:plates/invar>,
        "rod": <tag:forge:rods/invar>,
        "dirty_dust": <tag:forge:dirty_dusts/invar>,
        "clump": <tag:forge:clumps/invar>,
        "shard": <tag:forge:shards/invar>,
        "crystal": <tag:forge:crystals/invar>,
    },

    "electrum": {
        "nugget": <tag:forge:nuggets/electrum>,
        "ingot": <tag:forge:ingots/electrum>,
        "gem": <tag:forge:gems/electrum>,
        "storage_block": <tag:forge:storage_blocks/electrum>,
        "ore": <tag:forge:ores/electrum>,
        "ore_deposits": <tag:forge:ore_deposits/electrum>,
        "dust": <tag:forge:dusts/electrum>,
        "gear": <tag:forge:gears/electrum>,
        "plate": <tag:forge:plates/electrum>,
        "rod": <tag:forge:rods/electrum>,
        "dirty_dust": <tag:forge:dirty_dusts/electrum>,
        "clump": <tag:forge:clumps/electrum>,
        "shard": <tag:forge:shards/electrum>,
        "crystal": <tag:forge:crystals/electrum>,
    },

    "bismuth_brass": {
        "nugget": <tag:forge:nuggets/bismuth_brass>,
        "ingot": <tag:forge:ingots/bismuth_brass>,
        "gem": <tag:forge:gems/bismuth_brass>,
        "storage_block": <tag:forge:storage_blocks/bismuth_brass>,
        "ore": <tag:forge:ores/bismuth_brass>,
        "ore_deposits": <tag:forge:ore_deposits/bismuth_brass>,
        "dust": <tag:forge:dusts/bismuth_brass>,
        "gear": <tag:forge:gears/bismuth_brass>,
        "plate": <tag:forge:plates/bismuth_brass>,
        "rod": <tag:forge:rods/bismuth_brass>,
        "dirty_dust": <tag:forge:dirty_dusts/bismuth_brass>,
        "clump": <tag:forge:clumps/bismuth_brass>,
        "shard": <tag:forge:shards/bismuth_brass>,
        "crystal": <tag:forge:crystals/bismuth_brass>,
    },

    "steel": {
        "nugget": <tag:forge:nuggets/steel>,
        "ingot": <tag:forge:ingots/steel>,
        "gem": <tag:forge:gems/steel>,
        "storage_block": <tag:forge:storage_blocks/steel>,
        "ore": <tag:forge:ores/steel>,
        "ore_deposits": <tag:forge:ore_deposits/steel>,
        "dust": <tag:forge:dusts/steel>,
        "gear": <tag:forge:gears/steel>,
        "plate": <tag:forge:plates/steel>,
        "rod": <tag:forge:rods/steel>,
        "dirty_dust": <tag:forge:dirty_dusts/steel>,
        "clump": <tag:forge:clumps/steel>,
        "shard": <tag:forge:shards/steel>,
        "crystal": <tag:forge:crystals/steel>,
    },

    "aluminum_steel": {
        "nugget": <tag:forge:nuggets/aluminum_steel>,
        "ingot": <tag:forge:ingots/aluminum_steel>,
        "gem": <tag:forge:gems/aluminum_steel>,
        "storage_block": <tag:forge:storage_blocks/aluminum_steel>,
        "ore": <tag:forge:ores/aluminum_steel>,
        "ore_deposits": <tag:forge:ore_deposits/aluminum_steel>,
        "dust": <tag:forge:dusts/aluminum_steel>,
        "gear": <tag:forge:gears/aluminum_steel>,
        "plate": <tag:forge:plates/aluminum_steel>,
        "rod": <tag:forge:rods/aluminum_steel>,
        "dirty_dust": <tag:forge:dirty_dusts/aluminum_steel>,
        "clump": <tag:forge:clumps/aluminum_steel>,
        "shard": <tag:forge:shards/aluminum_steel>,
        "crystal": <tag:forge:crystals/aluminum_steel>,
    },

    "bismuth_steel": {
        "nugget": <tag:forge:nuggets/bismuth_steel>,
        "ingot": <tag:forge:ingots/bismuth_steel>,
        "gem": <tag:forge:gems/bismuth_steel>,
        "storage_block": <tag:forge:storage_blocks/bismuth_steel>,
        "ore": <tag:forge:ores/bismuth_steel>,
        "ore_deposits": <tag:forge:ore_deposits/bismuth_steel>,
        "dust": <tag:forge:dusts/bismuth_steel>,
        "gear": <tag:forge:gears/bismuth_steel>,
        "plate": <tag:forge:plates/bismuth_steel>,
        "rod": <tag:forge:rods/bismuth_steel>,
        "dirty_dust": <tag:forge:dirty_dusts/bismuth_steel>,
        "clump": <tag:forge:clumps/bismuth_steel>,
        "shard": <tag:forge:shards/bismuth_steel>,
        "crystal": <tag:forge:crystals/bismuth_steel>,
    },

    "signalum": {
        "nugget": <tag:forge:nuggets/signalum>,
        "ingot": <tag:forge:ingots/signalum>,
        "gem": <tag:forge:gems/signalum>,
        "storage_block": <tag:forge:storage_blocks/signalum>,
        "ore": <tag:forge:ores/signalum>,
        "ore_deposits": <tag:forge:ore_deposits/signalum>,
        "dust": <tag:forge:dusts/signalum>,
        "gear": <tag:forge:gears/signalum>,
        "plate": <tag:forge:plates/signalum>,
        "rod": <tag:forge:rods/signalum>,
        "dirty_dust": <tag:forge:dirty_dusts/signalum>,
        "clump": <tag:forge:clumps/signalum>,
        "shard": <tag:forge:shards/signalum>,
        "crystal": <tag:forge:crystals/signalum>,
    },

    "lumium": {
        "nugget": <tag:forge:nuggets/lumium>,
        "ingot": <tag:forge:ingots/lumium>,
        "gem": <tag:forge:gems/lumium>,
        "storage_block": <tag:forge:storage_blocks/lumium>,
        "ore": <tag:forge:ores/lumium>,
        "ore_deposits": <tag:forge:ore_deposits/lumium>,
        "dust": <tag:forge:dusts/lumium>,
        "gear": <tag:forge:gears/lumium>,
        "plate": <tag:forge:plates/lumium>,
        "rod": <tag:forge:rods/lumium>,
        "dirty_dust": <tag:forge:dirty_dusts/lumium>,
        "clump": <tag:forge:clumps/lumium>,
        "shard": <tag:forge:shards/lumium>,
        "crystal": <tag:forge:crystals/lumium>,
    },

    "enderium": {
        "nugget": <tag:forge:nuggets/enderium>,
        "ingot": <tag:forge:ingots/enderium>,
        "gem": <tag:forge:gems/enderium>,
        "storage_block": <tag:forge:storage_blocks/enderium>,
        "ore": <tag:forge:ores/enderium>,
        "ore_deposits": <tag:forge:ore_deposits/enderium>,
        "dust": <tag:forge:dusts/enderium>,
        "gear": <tag:forge:gears/enderium>,
        "plate": <tag:forge:plates/enderium>,
        "rod": <tag:forge:rods/enderium>,
        "dirty_dust": <tag:forge:dirty_dusts/enderium>,
        "clump": <tag:forge:clumps/enderium>,
        "shard": <tag:forge:shards/enderium>,
        "crystal": <tag:forge:crystals/enderium>,
    },

    "diamond": {
        "nugget": <tag:forge:nuggets/diamond>,
        "ingot": <tag:forge:ingots/diamond>,
        "gem": <tag:forge:gems/diamond>,
        "storage_block": <tag:forge:storage_blocks/diamond>,
        "ore": <tag:forge:ores/diamond>,
        "ore_deposits": <tag:forge:ore_deposits/diamond>,
        "dust": <tag:forge:dusts/diamond>,
        "gear": <tag:forge:gears/diamond>,
        "plate": <tag:forge:plates/diamond>,
        "rod": <tag:forge:rods/diamond>,
        "dirty_dust": <tag:forge:dirty_dusts/diamond>,
        "clump": <tag:forge:clumps/diamond>,
        "shard": <tag:forge:shards/diamond>,
        "crystal": <tag:forge:crystals/diamond>,
    },

    "lapis": {
        "nugget": <tag:forge:nuggets/lapis>,
        "ingot": <tag:forge:ingots/lapis>,
        "gem": <tag:forge:gems/lapis>,
        "storage_block": <tag:forge:storage_blocks/lapis>,
        "ore": <tag:forge:ores/lapis>,
        "ore_deposits": <tag:forge:ore_deposits/lapis>,
        "dust": <tag:forge:dusts/lapis>,
        "gear": <tag:forge:gears/lapis>,
        "plate": <tag:forge:plates/lapis>,
        "rod": <tag:forge:rods/lapis>,
        "dirty_dust": <tag:forge:dirty_dusts/lapis>,
        "clump": <tag:forge:clumps/lapis>,
        "shard": <tag:forge:shards/lapis>,
        "crystal": <tag:forge:crystals/lapis>,
    },

    "emerald": {
        "nugget": <tag:forge:nuggets/emerald>,
        "ingot": <tag:forge:ingots/emerald>,
        "gem": <tag:forge:gems/emerald>,
        "storage_block": <tag:forge:storage_blocks/emerald>,
        "ore": <tag:forge:ores/emerald>,
        "ore_deposits": <tag:forge:ore_deposits/emerald>,
        "dust": <tag:forge:dusts/emerald>,
        "gear": <tag:forge:gears/emerald>,
        "plate": <tag:forge:plates/emerald>,
        "rod": <tag:forge:rods/emerald>,
        "dirty_dust": <tag:forge:dirty_dusts/emerald>,
        "clump": <tag:forge:clumps/emerald>,
        "shard": <tag:forge:shards/emerald>,
        "crystal": <tag:forge:crystals/emerald>,
    },

    "quartz": {
        "nugget": <tag:forge:nuggets/quartz>,
        "ingot": <tag:forge:ingots/quartz>,
        //"gem": <tag:forge:gems/quartz>,
        //"storage_block": <tag:forge:storage_blocks/quartz>,
        "ore": <tag:forge:ores/quartz>,
        "ore_deposits": <tag:forge:ore_deposits/quartz>,
        "dust": <tag:forge:dusts/quartz>,
        "gear": <tag:forge:gears/quartz>,
        "plate": <tag:forge:plates/quartz>,
        "rod": <tag:forge:rods/quartz>,
        "dirty_dust": <tag:forge:dirty_dusts/quartz>,
        "clump": <tag:forge:clumps/quartz>,
        "shard": <tag:forge:shards/quartz>,
        "crystal": <tag:forge:crystals/quartz>,
    },

    "redstone": {
        "nugget": <tag:forge:nuggets/redstone>,
        "ingot": <tag:forge:ingots/redstone>,
        "gem": <tag:forge:gems/redstone>,
        "storage_block": <tag:forge:storage_blocks/redstone>,
        "ore": <tag:forge:ores/redstone>,
        "ore_deposits": <tag:forge:ore_deposits/redstone>,
        "dust": <tag:forge:dusts/redstone>,
        "gear": <tag:forge:gears/redstone>,
        "plate": <tag:forge:plates/redstone>,
        "rod": <tag:forge:rods/redstone>,
        "dirty_dust": <tag:forge:dirty_dusts/redstone>,
        "clump": <tag:forge:clumps/redstone>,
        "shard": <tag:forge:shards/redstone>,
        "crystal": <tag:forge:crystals/redstone>,
    },

    "glowstone": {
        "nugget": <tag:forge:nuggets/glowstone>,
        "ingot": <tag:forge:ingots/glowstone>,
        "gem": <tag:forge:gems/glowstone>,
        "storage_block": <tag:forge:storage_blocks/glowstone>,
        "ore": <tag:forge:ores/glowstone>,
        "ore_deposits": <tag:forge:ore_deposits/glowstone>,
        "dust": <tag:forge:dusts/glowstone>,
        "gear": <tag:forge:gears/glowstone>,
        "plate": <tag:forge:plates/glowstone>,
        "rod": <tag:forge:rods/glowstone>,
        "dirty_dust": <tag:forge:dirty_dusts/glowstone>,
        "clump": <tag:forge:clumps/glowstone>,
        "shard": <tag:forge:shards/glowstone>,
        "crystal": <tag:forge:crystals/glowstone>,
    },

    "obsidian": {
        "nugget": <tag:forge:nuggets/obsidian>,
        "ingot": <tag:forge:ingots/obsidian>,
        "gem": <tag:forge:gems/obsidian>,
        "storage_block": <tag:forge:storage_blocks/obsidian>,
        "ore": <tag:forge:ores/obsidian>,
        "ore_deposits": <tag:forge:ore_deposits/obsidian>,
        "dust": <tag:forge:dusts/obsidian>,
        "gear": <tag:forge:gears/obsidian>,
        "plate": <tag:forge:plates/obsidian>,
        "rod": <tag:forge:rods/obsidian>,
        "dirty_dust": <tag:forge:dirty_dusts/obsidian>,
        "clump": <tag:forge:clumps/obsidian>,
        "shard": <tag:forge:shards/obsidian>,
        "crystal": <tag:forge:crystals/obsidian>,
    },

    "iesmium": {
        "nugget": <tag:forge:nuggets/iesmium>,
        "ingot": <tag:forge:ingots/iesmium>,
        "gem": <tag:forge:gems/iesmium>,
        "storage_block": <tag:forge:storage_blocks/iesmium>,
        "ore": <tag:forge:ores/iesmium>,
        "ore_deposits": <tag:forge:ore_deposits/iesmium>,
        "dust": <tag:forge:dusts/iesmium>,
        "gear": <tag:forge:gears/iesmium>,
        "plate": <tag:forge:plates/iesmium>,
        "rod": <tag:forge:rods/iesmium>,
        "dirty_dust": <tag:forge:dirty_dusts/iesmium>,
        "clump": <tag:forge:clumps/iesmium>,
        "shard": <tag:forge:shards/iesmium>,
        "crystal": <tag:forge:crystals/iesmium>,
    }
};

var modPriorities as string[] = [
    "minecraft",
    "immersiveengineering",
    "create",
	"mekanism",
    "jaopca",
    "kubejs",
    "botania",
    "pneumaticcraft",
    "occultism",
    "tmechworks",
    "industrialforegoing",
    "botania",
    "quark"
];

for material, types in materials {
    for type, itemTag in types {
        if (itemTag.isItemTag) {
            if (itemTag.items.length > 1) {
                purgeItemTag(itemTag, modPriorities);
            }
        }
    }
}

function getPreferredItemInTag(tag as MCTag, modPriorities as string[]) as IItemStack {
	for mod in modPriorities {
		for item in tag.items {
            var itemOwner = item.registryName.split(":")[0];
            if (itemOwner == mod) {
                return item;
            }
        }
    }
	logger.warning("Unable to find acceptable item in MCTag " + tag.commandString + ". It contained:");
	for item in tag.items {
		logger.info(item.registryName);
	}
    return <item:minecraft:air>;
}

function purgeItemTag(tag as MCTag, modPriorities as string[]) as void {
    var preferredItem = getPreferredItemInTag(tag, modPriorities);
	for item in tag.items {
		if (!item.matches(preferredItem)) {
			tag.removeItems(item);
			disableItem(item);

			// Fallback recipe
			craftingTable.addShapeless(formatRecipeName(item) + "_conversion_recipe", tag.firstItem, [item]);
		}
	}
}