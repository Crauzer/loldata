NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
IsDamagingSpell = false
BuffTextureName = "Bowmaster_ArchersMark.dds"
BuffName = "Noxious Trap"
SpellFXOverrideSkins = {
  "AstronautTeemo"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "teemoeaster2.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "teemoeaster3.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "stealth"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "bantamarmor"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "shroommine.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "bantamtraptarget"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "slow"}
  },
  {
    Function = BBPreloadCharacter,
    Params = {
      Name = "teemomushroom"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "sharedwardbuff"
    }
  }
}
