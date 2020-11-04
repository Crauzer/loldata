NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = false
BuffTextureName = "Udyr_TigerStance.dds"
BuffName = "UdyrTigerStance"
SpellToggleSlot = 1
PersistsThroughDeath = true
SpellFXOverrideSkins = {"SpiritUdyr"}
SpellVOOverrideSkins = {"SpiritUdyr"}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadCharacter,
    Params = {Name = "udyrturtle"}
  },
  {
    Function = BBPreloadCharacter,
    Params = {
      Name = "udyrtigerult"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spirit_tiger_arms_max.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spirit_tiger_activation_ground_max.troy"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {Name = "udyrtiger"}
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spirit_tiger_arms.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spirit_tiger_activation_ground.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "tigerpelt.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "udyrtigerpunchbleed"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "udyrtigerpunch"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "udyrtigershred"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spiritguard_audio_tiger.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "udyrtigerattackult"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "udyrspirittigerrunstart"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spirit_tiger_activation_max.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spirit_tiger_activation.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "tigerstance.troy"
    }
  }
}
