NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
CastingBreaksStealth = true
IsDamagingSpell = false
BuffTextureName = "SwainRavenousFlock.dds"
BuffName = "SwainMetamorphism"
SpellToggleSlot = 4
NonDispellable = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadCharacter,
    Params = {Name = "swainraven"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "swain_metamorph.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "swain_metamorph_02.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "swain_demonform_idle.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "swain_grand_metamorphism_demonform_small.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "swain_grand_metamorphism_demonform.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "swain_grand_skin_flash.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "swainbeamtransition"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "swain_grand_metamorh_human.troy"
    }
  }
}
