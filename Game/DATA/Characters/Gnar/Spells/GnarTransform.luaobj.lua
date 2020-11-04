NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
BuffTextureName = "GnarTransform.dds"
AutoCooldownByLevel = {
  20,
  18,
  16,
  14,
  12
}
SpellFXOverrideSkins = {
  "RocketTristana"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadCharacter,
    Params = {Name = "gnarbig"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gnar_base_p_transform_small.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gnar_base_p_transform_blink.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gnar_base_p_transform_drool.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gnar_base_p_transform_twister.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "root"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "gnarbigq"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "gnarbigw"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "gnarbige"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "gnartransformtired"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gnar_base_p_transform_large.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "gnarq"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "gnarw"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "gnare"}
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "gnarwbuff"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gnar_base_transform_warning_blue.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "gnar_transform_out_warning.troy"
    }
  }
}
