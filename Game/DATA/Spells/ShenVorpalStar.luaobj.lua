NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
BuffTextureName = "Shen_VorpalBlade.dds"
BuffName = "Shen Vorpal Star"
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "shen_life_tap_tar_02.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "shenvorpalstarheal"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "shendestabilize"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "shen_vorpalstar_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "shen_vorpalstar_lifetap_tar_02.troy"
    }
  }
}
