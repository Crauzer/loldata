NotSingleTargetSpell = false
DoesntBreakShields = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = true
AutoBuffActivateEffect = "pantheon_aegis_self.troy"
SpellFXOverrideSkins = {
  "PantheonSkin06"
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "pantheonpassiveshield"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "pantheonpassivecounter"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "pantheon_base_w_tar.troy"
    }
  }
}
