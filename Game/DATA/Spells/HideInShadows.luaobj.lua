NotSingleTargetSpell = true
DoesntTriggerSpellCasts = false
CastingBreaksStealth = true
IsDamagingSpell = false
BuffTextureName = "Twitch_Ambush.dds"
BuffName = "Hide"
AutoBuffActivateEffect = "Global_Haste.troy"
SpellToggleSlot = 1
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "hideinshadowsbuff"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "twitch_invis_cas.troy"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "hideinshadows_internal"
    }
  }
}
