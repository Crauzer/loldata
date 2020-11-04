NotSingleTargetSpell = true
DoesntBreakShields = false
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = true
BuffTextureName = "Udyr_PhoenixStance.dds"
BuffName = "UdyrPhoenixStance"
SpellToggleSlot = 4
PersistsThroughDeath = true
SpellFXOverrideSkins = {"SpiritUdyr"}
SpellVOOverrideSkins = {"SpiritUdyr"}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadCharacter,
    Params = {
      Name = "udyrphoenixult"
    }
  },
  {
    Function = BBPreloadCharacter,
    Params = {
      Name = "udyrphoenix"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spirit_phoenix_wings.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spiritguard_audio_phoenix.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "udyrphoenixattackult"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "udyrspiritphoenixattackult"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spirit_phoenix_activation_max.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spirit_phoenix_activation.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "phoenixstance.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "phoenixpelt.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "udyrphoenixactivation"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spiritguard_audio_phoenixbreathattack.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_spirit_phoenix_breath_cas.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "udyr_phoenixbreath_cas.troy"
    }
  }
}
