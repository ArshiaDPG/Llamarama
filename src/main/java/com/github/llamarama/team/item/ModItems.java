package com.github.llamarama.team.item;

import com.github.llamarama.team.Llamarama;
import com.github.llamarama.team.block.ModBlocks;
import com.github.llamarama.team.client.ModSoundEvents;
import com.github.llamarama.team.entity.ModEntityTypes;
import com.github.llamarama.team.item.food.ModFoodComponents;
import com.github.llamarama.team.util.IdBuilder;
import net.minecraft.item.BedItem;
import net.minecraft.item.Item;
import net.minecraft.item.SpawnEggItem;
import net.minecraft.util.registry.Registry;


/**
 * @author PeterGamesGR
 * This is a utility class for adding items.
 * All items should be initialised in this class right after the registry list field.
 * This class should never be extended (hence it's final).
 * This class has a private constructor because it should never be instatiated.
 */
public final class ModItems {

    // Instantiate Items Here!!!
    public static final Item RAW_LLAMA_MEAT = new Item(getBaseSettings().food(ModFoodComponents.RAW_LLAMA_MEAT));
    public static final Item ROASTED_LLAMA_MEAT = new Item(getBaseSettings().food(ModFoodComponents.ROASTED_LLAMA_MEAT));
    public static final Item WOOLLY_LLAMA_SPAWN_EGG = new SpawnEggItem(ModEntityTypes.WOOLLY_LLAMA, 0xFDD185, 0xE9AE48, getBaseSettings());
    public static final Item HAY_ON_A_STICK = new HayOnAStickItem(getBaseSettings().maxCount(1));
    public static final Item LLAMA_MILK = new LlamaMilkItem(getBaseSettings().maxCount(1));
    public static final Item LLAMA_CHEESE = new Item(getBaseSettings().food(ModFoodComponents.LLAMA_CHEESE));
    public static final Item LLAMARAMA = new MusicDiscItem(5, ModSoundEvents.LLAMARAMA_DISC, getBaseSettings().maxCount(1).fireproof());
    public static final Item LLAMAJAMA = new MusicDiscItem(5, ModSoundEvents.LLAMAJAMA_DISC, getBaseSettings().maxCount(1).fireproof());
    public static final Item FLIGHT_OF_THE_BUMBLE_LLAMA = new MusicDiscItem(5, ModSoundEvents.BUMBLLAMA_DISC, getBaseSettings().maxCount(1).fireproof());
    public static final Item BUMBLE_LLAMA_SPAWN_EGG = new SpawnEggItem(ModEntityTypes.BUMBLE_LLAMA, 0xEDEDED, 0x4A6424, getBaseSettings());
    public static final Item CARAVAN_TRADER_SPAWN_EGG = new SpawnEggItem(ModEntityTypes.CARAVAN_TRADER, 0x7b857f, 0x6e3302, getBaseSettings());
    private static final Item LLAMA_WOOL_BED = new BedItem(ModBlocks.LLAMA_WOOL_BED, getBaseSettings().maxCount(1));
    private static ModItems instance;


    private ModItems() {
        register(RAW_LLAMA_MEAT, "raw_llama_meat");
        register(ROASTED_LLAMA_MEAT, "roasted_llama_meat");
        register(WOOLLY_LLAMA_SPAWN_EGG, "woolly_llama_spawn_egg");
        register(LLAMARAMA, "llamarama_disc");
        register(LLAMAJAMA, "llamajama_disc");
        register(HAY_ON_A_STICK, "hay_on_a_stick");
        register(LLAMA_MILK, "llama_milk");
        register(LLAMA_CHEESE, "llama_cheese");
        register(LLAMA_WOOL_BED, "llama_wool_bed");
        register(BUMBLE_LLAMA_SPAWN_EGG, "bumble_llama_spawn_egg");
        register(FLIGHT_OF_THE_BUMBLE_LLAMA, "flight_of_the_bumble_llama");
        register(CARAVAN_TRADER_SPAWN_EGG, "caravan_trader_spawn_egg");
    }

    public static void init() {
        if (instance == null) { instance = new ModItems(); }
    }

    public static Item.Settings getBaseSettings() {
        return new Item.Settings().group(Llamarama.LLAMA_ITEM_GROUP);
    }

    private void register(Item item, String id) {
        Registry.register(Registry.ITEM, IdBuilder.of(id), item);
    }

}
