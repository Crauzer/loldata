BuffTextureName = "Malphite_GraniteShield.dds"
BuffName = "MalphiteObduracyEffect"
AutoBuffActivateEffect = ""
NonDispellable = true
OnBuffActivateBuildingBlocks = {
  {
    Function = BBGetPAROrHealth,
    Params = {
      DestVar = "HPPool",
      OwnerVar = "Owner",
      Function = GetMaxHealth,
      PARType = PAR_MANA
    }
  },
  {
    Function = BBMath,
    Params = {
      Src2Var = "HPPool",
      Src1Value = 0.1,
      Src2Value = 0,
      DestVar = "ShieldHealth",
      DestVarTable = "InstanceVars",
      MathOp = MO_MULTIPLY
    }
  },
  {
    Function = BBSpellBuffRemove,
    Params = {
      TargetVar = "Owner",
      AttackerVar = "Owner",
      BuffName = "MalphiteShieldRemoval"
    }
  }
}
OnBuffDeactivateBuildingBlocks = {
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Owner",
      AttackerVar = "Owner",
      BuffName = "MalphiteShieldRemoval",
      BuffAddType = BUFF_REPLACE_EXISTING,
      StacksExclusive = true,
      BuffType = BUFF_Internal,
      MaxStack = 1,
      NumberOfStacks = 1,
      Duration = 25000,
      BuffVarsTable = "NextBuffVars",
      TickRate = 0,
      CanMitigateDuration = false
    }
  }
}
BuffOnUpdateActionsBuildingBlocks = {
  {
    Function = BBIf,
    Params = {
      Src1Var = "ShieldHealth",
      Src1VarTable = "InstanceVars",
      Value2 = 0,
      CompareOp = CO_LESS_THAN_OR_EQUAL
    },
    SubBlocks = {
      {
        Function = BBSpellBuffRemoveCurrent,
        Params = {TargetVar = "Owner"}
      }
    }
  },
  {
    Function = BBExecutePeriodically,
    Params = {
      TimeBetweenExecutions = 1,
      TrackTimeVar = "LastTimeExecuted",
      TrackTimeVarTable = "InstanceVars",
      ExecuteImmediately = false
    },
    SubBlocks = {
      {
        Function = BBIfNotHasBuff,
        Params = {
          OwnerVar = "Owner",
          CasterVar = "Owner",
          BuffName = "MalphiteShieldBeenHit"
        },
        SubBlocks = {
          {
            Function = BBGetPAROrHealth,
            Params = {
              DestVar = "HPPool",
              OwnerVar = "Owner",
              Function = GetMaxHealth,
              PARType = PAR_MANA
            }
          },
          {
            Function = BBMath,
            Params = {
              Src2Var = "HPPool",
              Src1Value = 0.1,
              Src2Value = 0,
              DestVar = "ShieldHealth",
              DestVarTable = "InstanceVars",
              MathOp = MO_MULTIPLY
            }
          }
        }
      }
    }
  }
}
BuffOnPreDamageBuildingBlocks = {
  {
    Function = BBIf,
    Params = {
      Src1Var = "ShieldHealth",
      Src1VarTable = "InstanceVars",
      Src2Var = "DamageAmount",
      CompareOp = CO_GREATER_THAN_OR_EQUAL
    },
    SubBlocks = {
      {
        Function = BBMath,
        Params = {
          Src1Var = "ShieldHealth",
          Src1VarTable = "InstanceVars",
          Src2Var = "DamageAmount",
          Src1Value = 0,
          Src2Value = 0,
          DestVar = "ShieldHealth",
          DestVarTable = "InstanceVars",
          MathOp = MO_SUBTRACT
        }
      },
      {
        Function = BBSetVarInTable,
        Params = {
          DestVar = "DamageAmount",
          SrcValue = 0
        }
      }
    }
  },
  {
    Function = BBElse,
    Params = {},
    SubBlocks = {
      {
        Function = BBMath,
        Params = {
          Src1Var = "DamageAmount",
          Src2Var = "ShieldHealth",
          Src2VarTable = "InstanceVars",
          Src1Value = 0,
          Src2Value = 0,
          DestVar = "DamageAmount",
          MathOp = MO_SUBTRACT
        }
      },
      {
        Function = BBSetVarInTable,
        Params = {
          DestVar = "ShieldHealth",
          DestVarTable = "InstanceVars",
          SrcValue = 0
        }
      }
    }
  },
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Owner",
      AttackerVar = "Owner",
      BuffName = "MalphiteShieldBeenHit",
      BuffAddType = BUFF_RENEW_EXISTING,
      StacksExclusive = true,
      BuffType = BUFF_Internal,
      MaxStack = 1,
      NumberOfStacks = 1,
      Duration = 8,
      BuffVarsTable = "NextBuffVars",
      TickRate = 0,
      CanMitigateDuration = false
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "malphiteshieldremoval"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "malphiteshieldbeenhit"
    }
  }
}
