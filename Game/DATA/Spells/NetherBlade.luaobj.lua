NotSingleTargetSpell = true
BuffTextureName = "Voidwalker_NullBlade.dds"
BuffName = "NetherBladeArmorPen"
SpellToggleSlot = 2
NonDispellable = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "netherblade_cas.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "netherblade_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "netherblade"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "Kassadin_Base_W_buf.troy"
    }
  }
}
