NotSingleTargetSpell = false
DoesntBreakShields = True
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
SpellDamageRatio = 1
PersistsThroughDeath = true
TargetExecuteBuildingBlocks = {
  {
    Function = BBBreakSpellShields,
    Params = {TargetVar = "Target"}
  },
  {
    Function = BBGetSlotSpellInfo,
    Params = {
      DestVar = "Level",
      SpellSlotValue = 2,
      SpellbookType = SPELLBOOK_CHAMPION,
      SlotType = SpellSlots,
      OwnerVar = "Owner",
      Function = GetSlotSpellLevel
    }
  },
  {
    Function = BBSetVarInTable,
    Params = {DestVar = "DoOnce", SrcValue = false}
  },
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "BaseDamage",
      SrcValueByLevel = {
        65,
        90,
        115,
        140,
        165
      }
    }
  },
  {
    Function = BBIf,
    Params = {
      Src1Var = "DarkWindCount",
      Src1VarTable = "CharVars",
      Value2 = 4,
      CompareOp = CO_LESS_THAN
    },
    SubBlocks = {
      {
        Function = BBForEachUnitInTargetAreaRandom,
        Params = {
          AttackerVar = "Attacker",
          CenterVar = "Target",
          Range = 600,
          Flags = "AffectEnemies AffectNeutral AffectMinions AffectHeroes ",
          IteratorVar = "Unit",
          MaximumUnitsToPick = 10,
          InclusiveBuffFilter = false
        },
        SubBlocks = {
          {
            Function = BBIf,
            Params = {
              Src1Var = "DoOnce",
              Value2 = false,
              CompareOp = CO_EQUAL
            },
            SubBlocks = {
              {
                Function = BBIf,
                Params = {
                  Src1Var = "Unit",
                  Src2Var = "Target",
                  CompareOp = CO_NOT_EQUAL
                },
                SubBlocks = {
                  {
                    Function = BBGetStatus,
                    Params = {
                      TargetVar = "Unit",
                      DestVar = "IsStealthed",
                      Status = GetStealthed
                    }
                  },
                  {
                    Function = BBIf,
                    Params = {
                      Src1Var = "IsStealthed",
                      Value2 = false,
                      CompareOp = CO_EQUAL
                    },
                    SubBlocks = {
                      {
                        Function = BBGetUnitPosition,
                        Params = {
                          UnitVar = "Owner",
                          PositionVar = "AttackerPos"
                        }
                      },
                      {
                        Function = BBGetSlotSpellInfo,
                        Params = {
                          DestVar = "Level",
                          SpellSlotValue = 2,
                          SpellbookType = SPELLBOOK_CHAMPION,
                          SlotType = SpellSlots,
                          OwnerVar = "Attacker",
                          Function = GetSlotSpellLevel
                        }
                      },
                      {
                        Function = BBSetVarInTable,
                        Params = {DestVar = "DoOnce", SrcValue = true}
                      },
                      {
                        Function = BBSpellCast,
                        Params = {
                          CasterVar = "Attacker",
                          TargetVar = "Unit",
                          OverrideCastPosition = true,
                          OverrideCastPosVar = "Target",
                          SlotNumber = 1,
                          SlotType = ExtraSlots,
                          OverrideForceLevel = 0,
                          OverrideForceLevelVar = "Level",
                          OverrideCoolDownCheck = true,
                          FireWithoutCasting = true,
                          UseAutoAttackSpell = false,
                          ForceCastingOrChannelling = false,
                          UpdateAutoAttackTimer = false
                        }
                      }
                    }
                  },
                  {
                    Function = BBElse,
                    Params = {},
                    SubBlocks = {
                      {
                        Function = BBCanSeeTarget,
                        Params = {
                          ViewerVar = "Attacker",
                          TargetVar = "Unit",
                          ResultVar = "CanSee"
                        }
                      },
                      {
                        Function = BBIf,
                        Params = {
                          Src1Var = "CanSee",
                          Value2 = true,
                          CompareOp = CO_EQUAL
                        },
                        SubBlocks = {
                          {
                            Function = BBGetUnitPosition,
                            Params = {
                              UnitVar = "Owner",
                              PositionVar = "AttackerPos"
                            }
                          },
                          {
                            Function = BBGetSlotSpellInfo,
                            Params = {
                              DestVar = "Level",
                              SpellSlotValue = 2,
                              SpellbookType = SPELLBOOK_CHAMPION,
                              SlotType = SpellSlots,
                              OwnerVar = "Attacker",
                              Function = GetSlotSpellLevel
                            }
                          },
                          {
                            Function = BBSetVarInTable,
                            Params = {DestVar = "DoOnce", SrcValue = true}
                          },
                          {
                            Function = BBSpellCast,
                            Params = {
                              CasterVar = "Attacker",
                              TargetVar = "Unit",
                              OverrideCastPosition = true,
                              OverrideCastPosVar = "Target",
                              SlotNumber = 1,
                              SlotType = ExtraSlots,
                              OverrideForceLevel = 0,
                              OverrideForceLevelVar = "Level",
                              OverrideCoolDownCheck = true,
                              FireWithoutCasting = true,
                              UseAutoAttackSpell = false,
                              ForceCastingOrChannelling = false,
                              UpdateAutoAttackTimer = false
                            }
                          },
                          {
                            Function = BBSpellBuffAdd,
                            Params = {
                              TargetVar = "Target",
                              AttackerVar = "Attacker",
                              BuffAddType = BUFF_REPLACE_EXISTING,
                              StacksExclusive = true,
                              BuffType = BUFF_Internal,
                              MaxStack = 1,
                              NumberOfStacks = 1,
                              Duration = 0.5,
                              BuffVarsTable = "NextBuffVars",
                              TickRate = 0,
                              CanMitigateDuration = false,
                              IsHiddenOnClient = false
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  },
  {
    Function = BBBreakSpellShields,
    Params = {TargetVar = "Target"}
  },
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Target",
      AttackerVar = "Attacker",
      BuffName = "DarkWind",
      BuffAddType = BUFF_RENEW_EXISTING,
      StacksExclusive = true,
      BuffType = BUFF_CombatDehancer,
      MaxStack = 1,
      NumberOfStacks = 1,
      Duration = 1.2,
      BuffVarsTable = "NextBuffVars",
      TickRate = 0,
      CanMitigateDuration = false,
      IsHiddenOnClient = false
    }
  },
  {
    Function = BBApplyDamage,
    Params = {
      AttackerVar = "Attacker",
      CallForHelpAttackerVar = "Attacker",
      TargetVar = "Target",
      DamageByLevel = {
        0,
        0,
        0,
        0,
        0
      },
      Damage = 0,
      DamageVar = "BaseDamage",
      DamageType = MAGIC_DAMAGE,
      SourceDamageType = DAMAGESOURCE_SPELLAOE,
      PercentOfAttack = 1,
      SpellDamageRatio = 0.45,
      PhysicalDamageRatio = 0,
      IgnoreDamageIncreaseMods = false,
      IgnoreDamageCrit = false
    }
  },
  {
    Function = BBMath,
    Params = {
      Src2Var = "DarkWindCount",
      Src2VarTable = "CharVars",
      Src1Value = 1,
      Src2Value = 0,
      DestVar = "DarkWindCount",
      DestVarTable = "CharVars",
      MathOp = MO_ADD
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {Name = "darkwind"}
  }
}
