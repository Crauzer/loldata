NotSingleTargetSpell = true
DoesntBreakShields = true
DoesntTriggerSpellCasts = true
BuffTextureName = "Ashe_Q_Debuff.dds"
BuffName = "Frost Arrow"
AutoBuffActivateEffect = "Global_Freeze.troy"
IsDeathRecapSource = true
PopupMessage1 = "game_floatingtext_Slowed"
SpellFXOverrideSkins = {"AsheSkin06"}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "frostarrow"}
  }
}
