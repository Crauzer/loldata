NotSingleTargetSpell = false
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
BuffTextureName = "FallenAngel_DarkBinding.dds"
BuffName = "EzrealEssenceFluxDebuff"
TriggersSpellCasts = true
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "alzaharcallofthevoidmissile"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "silence"}
  }
}
