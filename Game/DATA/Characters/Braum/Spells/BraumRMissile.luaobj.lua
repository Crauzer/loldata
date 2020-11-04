NotSingleTargetSpell = false
DoesntTriggerSpellCasts = true
IsDamagingSpell = true
BuffTextureName = "Ezreal_EssenceFlux.dds"
BuffName = "MaokaiTrunkLineMissile"
SpellFXOverrideSkins = {
  "BraumSkin01"
}
TriggersSpellCasts = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "braum_r_pulse_pbaoe_impact.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "braum_base_r_firstknockup_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "braum_base_r_slow_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "braum_base_r_small_knockup_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "braum_base_r_mis.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "braum_r_pulse_hitsound.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "braum_base_r_small_mis.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "braum_r_pulse_hitsoundsmall.troy"
    }
  }
}
