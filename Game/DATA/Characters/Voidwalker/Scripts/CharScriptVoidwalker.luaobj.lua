BuffTextureName = "Teemo_EagleEye.dds"
UpdateSelfBuffActionsBuildingBlocks = {
  {
    Function = BBIfHasBuff,
    Params = {
      OwnerVar = "Owner",
      AttackerVar = "Owner",
      BuffName = "NetherBlade"
    }
  },
  {
    Function = BBElse,
    Params = {},
    SubBlocks = {
      {
        Function = BBGetSlotSpellInfo,
        Params = {
          DestVar = "Level2",
          SpellSlotValue = 1,
          SpellbookType = SPELLBOOK_CHAMPION,
          SlotType = SpellSlots,
          OwnerVar = "Owner",
          Function = GetSlotSpellLevel
        }
      },
      {
        Function = BBIf,
        Params = {
          Src1Var = "Level2",
          Value2 = 0,
          CompareOp = CO_GREATER_THAN
        },
        SubBlocks = {
          {
            Function = BBSpellBuffAdd,
            Params = {
              TargetVar = "Owner",
              AttackerVar = "Owner",
              BuffName = "NetherBlade",
              BuffAddType = BUFF_REPLACE_EXISTING,
              BuffType = BUFF_CombatEnchancer,
              MaxStack = 1,
              NumberStacks = 1,
              Duration = 25000,
              BuffVarsTable = "NextBuffVars",
              TickRate = 0
            }
          }
        }
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
        Function = BBIf,
        Params = {
          Src1Var = "Level",
          Value2 = 0,
          CompareOp = CO_GREATER_THAN
        },
        SubBlocks = {
          {
            Function = BBIf,
            Params = {Src1Var = "Owner", CompareOp = CO_IS_NOT_DEAD},
            SubBlocks = {
              {
                Function = BBGetTeamID,
                Params = {TargetVar = "Owner", DestVar = "TeamID"}
              },
              {
                Function = BBForEachUnitInTargetArea,
                Params = {
                  AttackerVar = "Owner",
                  CenterVar = "Owner",
                  Range = 1800,
                  Flags = "AffectEnemies AffectFriends AffectHeroes AlwaysSelf ",
                  IteratorVar = "Unit"
                },
                SubBlocks = {
                  {
                    Function = BBIf,
                    Params = {
                      Src1Var = "TeamID",
                      Value2 = 100,
                      CompareOp = CO_EQUAL
                    },
                    SubBlocks = {
                      {
                        Function = BBSpellBuffAdd,
                        Params = {
                          TargetVar = "Unit",
                          AttackerVar = "Attacker",
                          BuffName = "ForcePulse",
                          BuffAddType = BUFF_RENEW_EXISTING,
                          BuffType = BUFF_Internal,
                          MaxStack = 1,
                          NumberStacks = 1,
                          Duration = 5,
                          BuffVarsTable = "NextBuffVars",
                          TickRate = 0
                        }
                      }
                    }
                  },
                  {
                    Function = BBElse,
                    Params = {},
                    SubBlocks = {
                      {
                        Function = BBSpellBuffAdd,
                        Params = {
                          TargetVar = "Unit",
                          AttackerVar = "Attacker",
                          BuffName = "forcepulsechaos",
                          BuffAddType = BUFF_RENEW_EXISTING,
                          BuffType = BUFF_Internal,
                          MaxStack = 1,
                          NumberStacks = 1,
                          Duration = 5,
                          BuffVarsTable = "NextBuffVars",
                          TickRate = 0
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
SetVarsByLevelBuildingBlocks = {
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "MagicAbsorb",
      DestVarTable = "CharVars",
      SrcValueByLevel = {
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85,
        0.85
      }
    }
  }
}
CharOnActivateBuildingBlocks = {
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Owner",
      AttackerVar = "Owner",
      BuffName = "VoidStone",
      BuffAddType = BUFF_REPLACE_EXISTING,
      BuffType = BUFF_Aura,
      MaxStack = 1,
      NumberStacks = 1,
      Duration = 25000,
      BuffVarsTable = "NextBuffVars",
      TickRate = 0
    }
  },
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Owner",
      AttackerVar = "Owner",
      BuffName = "ChampionChampionDelta",
      BuffAddType = BUFF_RENEW_EXISTING,
      BuffType = BUFF_Internal,
      MaxStack = 1,
      NumberStacks = 1,
      Duration = 25000,
      BuffVarsTable = "NextBuffVars",
      TickRate = 0
    }
  },
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Owner",
      AttackerVar = "Owner",
      BuffName = "APBonusDamageToTowers",
      BuffAddType = BUFF_RENEW_EXISTING,
      BuffType = BUFF_Internal,
      MaxStack = 1,
      NumberStacks = 1,
      Duration = 25000,
      BuffVarsTable = "NextBuffVars",
      TickRate = 0
    }
  },
  {
    Function = BBSealSpellSlot,
    Params = {
      SpellSlot = 2,
      SlotType = SpellSlots,
      TargetVar = "Owner",
      State = true
    }
  },
  {
    Function = BBSealSpellSlot,
    Params = {
      SpellSlot = 1,
      SlotType = SpellSlots,
      TargetVar = "Owner",
      State = true
    }
  }
}
CharOnDisconnectBuildingBlocks = {
  {
    Function = BBSpellCast,
    Params = {
      CasterVar = "Owner",
      TargetVar = "Owner",
      PosVar = "Owner",
      EndPosVar = "Owner",
      SlotNumber = 6,
      SlotType = InventorySlots,
      OverrideForceLevel = 1,
      OverrideCoolDownCheck = true,
      FireWithoutCasting = false,
      UseAutoAttackSpell = false
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "netherblade"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "forcepulse"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "forcepulsechaos"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {Name = "voidstone"}
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "championchampiondelta"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "apbonusdamagetotowers"
    }
  }
}
