NotSingleTargetSpell = false
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "VarusR.dds"
BuffName = "VarusRShackles"
AutoCooldownByLevel = {
  80,
  80,
  80
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "varus_r_secondary_beam.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "varus_r_tendriltarget.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "varusrspellshieldcheck"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "varusrspellshieldcheck2"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "varusrroot"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "varusrimmune"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {
      Name = "testcuberender10vision"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "varusrmissileend"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "expirationtimer"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "varuswdetonate"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "varusrhitflash.troy"
    }
  }
}
