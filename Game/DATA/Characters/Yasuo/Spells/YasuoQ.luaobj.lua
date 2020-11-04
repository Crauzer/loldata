NotSingleTargetSpell = false
DoesntTriggerSpellCasts = true
IsDamagingSpell = true
BuffTextureName = "Yasuo_Q2.dds"
BuffName = "YasuoQ"
SpellFXOverrideSkins = {
  "CyberEzreal"
}
TriggersSpellCasts = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "yasuoq2w"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_skin01_q2_ready_buff.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "yasuo_q2_ready_buff.troy"
    }
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
      Name = "yasuo_q_ready_sound.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "yasuoqw"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "yasuoq3w"}
  },
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
      Name = "temp_yasuoq_garen_bladestormcrit_tar.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "yasuoq"}
  }
}
