NotSingleTargetSpell = false
DoesntTriggerSpellCasts = true
IsDamagingSpell = true
BuffTextureName = "Garen_DecisiveStrike.dds"
BuffName = "YasuoQ"
SpellFXOverrideSkins = {
  "YasuoSkin01",
  "YasuoSkin02"
}
SpellVOOverrideSkins = {
  "YasuoSkin02"
}
TriggersSpellCasts = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_skin01_q_windswirl.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_q_windswirl.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "yasuoq3misw"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "yasuoqdamage"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_skin01_q_hit_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_base_q_hit_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "temp_yasuo_q_tar_blood.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "temp_yasuoq_garen_bladestormcrit_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "yasuoq"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "yasuoq3w"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_skin01_q_ready_sound.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_base_q_ready_sound.troy"
    }
  }
}
