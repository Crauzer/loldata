BuffTextureName = "3037_Mana_Manipulator.dds"
BuffName = "Mana Regeneration"
OnBuffActivateBuildingBlocks = {
  {
    Function = BBRequireVar,
    Params = {
      RequiredVar = "ManaRegenBonus",
      RequiredVarTable = "InstanceVars"
    }
  }
}
BuffOnUpdateStatsBuildingBlocks = {
  {
    Function = BBIncFlatPARRegenMod,
    Params = {
      PARType = PAR_MANA,
      TargetVar = "Owner",
      DeltaVar = "ManaRegenBonus",
      DeltaVarTable = "InstanceVars",
      Delta = 0
    }
  }
}
