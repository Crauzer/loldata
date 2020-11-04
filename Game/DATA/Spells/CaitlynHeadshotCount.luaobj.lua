BuffTextureName = "Caitlyn_Headshot.dds"
BuffName = "CaitlynHeadshotCount"
OnBuffActivateBuildingBlocks = {
  {
    Function = BBGetBuffCountFromCaster,
    Params = {
      DestVar = "Count",
      TargetVar = "Owner",
      CasterVar = "Owner",
      BuffName = "CaitlynHeadshotCount"
    }
  },
  {
    Function = BBIf,
    Params = {
      Src1Var = "Count",
      Src2Var = "tooltipAmount",
      Src2VarTable = "CharVars",
      CompareOp = CO_GREATER_THAN_OR_EQUAL
    },
    SubBlocks = {
      {
        Function = BBSpellBuffAdd,
        Params = {
          TargetVar = "Owner",
          AttackerVar = "Owner",
          BuffName = "CaitlynHeadshot",
          BuffAddType = BUFF_REPLACE_EXISTING,
          StacksExclusive = true,
          BuffType = BUFF_CombatEnchancer,
          MaxStack = 1,
          NumberOfStacks = 1,
          Duration = 25000,
          BuffVarsTable = "NextBuffVars",
          TickRate = 0,
          CanMitigateDuration = false,
          IsHiddenOnClient = false
        }
      },
      {
        Function = BBSpellBuffRemoveStacks,
        Params = {
          TargetVar = "Owner",
          AttackerVar = "Owner",
          BuffName = "CaitlynHeadshotCount",
          NumStacks = 0
        }
      }
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "caitlynheadshotcount"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "caitlynheadshot"
    }
  }
}
