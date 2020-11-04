BuffTextureName = ""
BuffName = ""
PersistsThroughDeath = true
NonDispellable = true
BuffOnKillBuildingBlocks = {
  {
    Function = BBIf,
    Params = {Src1Var = "Target", CompareOp = CO_IS_TYPE_HERO},
    SubBlocks = {
      {
        Function = BBSpellBuffAdd,
        Params = {
          TargetVar = "Attacker",
          AttackerVar = "Attacker",
          BuffName = "MejaisStats",
          BuffAddType = BUFF_STACKS_AND_RENEWS,
          BuffType = BUFF_Aura,
          MaxStack = 20,
          NumberOfStacks = 1,
          Duration = 25000,
          BuffVarsTable = "NextBuffVars",
          TickRate = 0
        }
      },
      {
        Function = BBSpellBuffAdd,
        Params = {
          TargetVar = "Attacker",
          AttackerVar = "Attacker",
          BuffName = "MejaisStats",
          BuffAddType = BUFF_STACKS_AND_RENEWS,
          BuffType = BUFF_Aura,
          MaxStack = 20,
          NumberOfStacks = 1,
          Duration = 25000,
          BuffVarsTable = "NextBuffVars",
          TickRate = 0
        }
      }
    }
  }
}
BuffOnAssistBuildingBlocks = {
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Owner",
      AttackerVar = "Owner",
      BuffName = "MejaisStats",
      BuffAddType = BUFF_STACKS_AND_RENEWS,
      BuffType = BUFF_Aura,
      MaxStack = 20,
      NumberOfStacks = 1,
      Duration = 25000,
      BuffVarsTable = "NextBuffVars",
      TickRate = 0
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "mejaisstats"
    }
  }
}
