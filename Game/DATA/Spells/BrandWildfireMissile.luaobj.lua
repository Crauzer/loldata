NotSingleTargetSpell = false
DoesntBreakShields = True
DoesntTriggerSpellCasts = false
IsDamagingSpell = true
SpellDamageRatio = 1
PersistsThroughDeath = true
TargetExecuteBuildingBlocks = {
  {
    Function = BBSpellBuffAdd,
    Params = {
      TargetVar = "Owner",
      AttackerVar = "Owner",
      BuffName = "BrandWildfire",
      BuffAddType = BUFF_STACKS_AND_RENEWS,
      StacksExclusive = true,
      BuffType = BUFF_Internal,
      MaxStack = 5,
      NumberOfStacks = 1,
      Duration = 4,
      BuffVarsTable = "NextBuffVars",
      TickRate = 0,
      CanMitigateDuration = false,
      IsHiddenOnClient = false
    }
  },
  {
    Function = BBSetVarInTable,
    Params = {
      DestVar = "BaseDamage",
      SrcValueByLevel = {
        150,
        250,
        350,
        400,
        350
      }
    }
  },
  {
    Function = BBSetVarInTable,
    Params = {DestVar = "DoOnce", SrcValue = false}
  },
  {
    Function = BBGetBuffCountFromAll,
    Params = {
      DestVar = "Count",
      TargetVar = "Owner",
      BuffName = "BrandWildfire"
    }
  },
  {
    Function = BBIf,
    Params = {
      Src1Var = "Count",
      Value2 = 4,
      CompareOp = CO_LESS_THAN_OR_EQUAL
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
                          UnitVar = "Target",
                          PositionVar = "AttackerPos"
                        }
                      },
                      {
                        Function = BBGetSlotSpellInfo,
                        Params = {
                          DestVar = "Level",
                          SpellSlotValue = 3,
                          SpellbookType = SPELLBOOK_CHAMPION,
                          SlotType = SpellSlots,
                          OwnerVar = "Attacker",
                          Function = GetSlotSpellLevel
                        }
                      },
                      {
                        Function = BBIfHasBuff,
                        Params = {
                          OwnerVar = "Target",
                          AttackerVar = "Attacker",
                          BuffName = "BrandAblaze"
                        },
                        SubBlocks = {
                          {
                            Function = BBSpellCast,
                            Params = {
                              CasterVar = "Attacker",
                              TargetVar = "Unit",
                              OverrideCastPosition = true,
                              OverrideCastPosVar = "AttackerPos",
                              SlotNumber = 4,
                              SlotType = ExtraSlots,
                              OverrideForceLevel = 0,
                              OverrideForceLevelVar = "Level",
                              OverrideCoolDownCheck = true,
                              FireWithoutCasting = true,
                              UseAutoAttackSpell = false,
                              ForceCastingOrChannelling = true,
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
                            Function = BBSpellCast,
                            Params = {
                              CasterVar = "Attacker",
                              TargetVar = "Unit",
                              OverrideCastPosition = true,
                              OverrideCastPosVar = "AttackerPos",
                              SlotNumber = 1,
                              SlotType = ExtraSlots,
                              OverrideForceLevel = 0,
                              OverrideForceLevelVar = "Level",
                              OverrideCoolDownCheck = true,
                              FireWithoutCasting = true,
                              UseAutoAttackSpell = false,
                              ForceCastingOrChannelling = true,
                              UpdateAutoAttackTimer = false
                            }
                          }
                        }
                      },
                      {
                        Function = BBSetVarInTable,
                        Params = {DestVar = "DoOnce", SrcValue = true}
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
                              UnitVar = "Target",
                              PositionVar = "AttackerPos"
                            }
                          },
                          {
                            Function = BBGetSlotSpellInfo,
                            Params = {
                              DestVar = "Level",
                              SpellSlotValue = 3,
                              SpellbookType = SPELLBOOK_CHAMPION,
                              SlotType = SpellSlots,
                              OwnerVar = "Attacker",
                              Function = GetSlotSpellLevel
                            }
                          },
                          {
                            Function = BBIfHasBuff,
                            Params = {
                              OwnerVar = "Target",
                              AttackerVar = "Attacker",
                              BuffName = "BrandAblaze"
                            },
                            SubBlocks = {
                              {
                                Function = BBSpellCast,
                                Params = {
                                  CasterVar = "Attacker",
                                  TargetVar = "Unit",
                                  OverrideCastPosition = true,
                                  OverrideCastPosVar = "AttackerPos",
                                  SlotNumber = 4,
                                  SlotType = ExtraSlots,
                                  OverrideForceLevel = 0,
                                  OverrideForceLevelVar = "Level",
                                  OverrideCoolDownCheck = true,
                                  FireWithoutCasting = true,
                                  UseAutoAttackSpell = false,
                                  ForceCastingOrChannelling = true,
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
                                Function = BBSpellCast,
                                Params = {
                                  CasterVar = "Attacker",
                                  TargetVar = "Unit",
                                  OverrideCastPosition = true,
                                  OverrideCastPosVar = "AttackerPos",
                                  SlotNumber = 1,
                                  SlotType = ExtraSlots,
                                  OverrideForceLevel = 0,
                                  OverrideForceLevelVar = "Level",
                                  OverrideCoolDownCheck = true,
                                  FireWithoutCasting = true,
                                  UseAutoAttackSpell = false,
                                  ForceCastingOrChannelling = true,
                                  UpdateAutoAttackTimer = false
                                }
                              }
                            }
                          },
                          {
                            Function = BBSetVarInTable,
                            Params = {DestVar = "DoOnce", SrcValue = true}
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
    Function = BBIfHasBuff,
    Params = {
      OwnerVar = "Target",
      AttackerVar = "Owner",
      BuffName = "BrandAblaze"
    },
    SubBlocks = {
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Target",
          EffectName = "BrandConflagration_tar.troy",
          Flags = 0,
          EffectIDVar = "AblazeHitEffect",
          TargetObjectVar = "Target",
          SpecificUnitOnlyVar = "Owner",
          SpecificTeamOnly = TEAM_UNKNOWN,
          UseSpecificUnit = false,
          FOWTeam = TEAM_UNKNOWN,
          FOWVisibilityRadius = 0,
          SendIfOnScreenOrDiscard = true,
          FollowsGroundTilt = false,
          FacesTarget = false
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
          BuffName = "BrandAblaze",
          BuffAddType = BUFF_RENEW_EXISTING,
          StacksExclusive = true,
          BuffType = BUFF_CombatDehancer,
          MaxStack = 1,
          NumberOfStacks = 1,
          Duration = 4,
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
          SpellDamageRatio = 0.5,
          PhysicalDamageRatio = 0,
          IgnoreDamageIncreaseMods = false,
          IgnoreDamageCrit = false
        }
      }
    }
  },
  {
    Function = BBElse,
    Params = {},
    SubBlocks = {
      {
        Function = BBBreakSpellShields,
        Params = {TargetVar = "Target"}
      },
      {
        Function = BBSpellBuffAdd,
        Params = {
          TargetVar = "Target",
          AttackerVar = "Attacker",
          BuffName = "BrandAblaze",
          BuffAddType = BUFF_RENEW_EXISTING,
          StacksExclusive = true,
          BuffType = BUFF_CombatDehancer,
          MaxStack = 1,
          NumberOfStacks = 1,
          Duration = 4,
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
          SpellDamageRatio = 0.5,
          PhysicalDamageRatio = 0,
          IgnoreDamageIncreaseMods = false,
          IgnoreDamageCrit = false
        }
      },
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Target",
          EffectName = "BrandConflagration_tar.troy",
          Flags = 0,
          EffectIDVar = "NormalHitEffect",
          TargetObjectVar = "Target",
          SpecificUnitOnlyVar = "Owner",
          SpecificTeamOnly = TEAM_UNKNOWN,
          UseSpecificUnit = false,
          FOWTeam = TEAM_UNKNOWN,
          FOWVisibilityRadius = 0,
          SendIfOnScreenOrDiscard = true,
          FollowsGroundTilt = false,
          FacesTarget = false
        }
      }
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "brandwildfire"
    }
  },
  {
    Function = BBPreloadSpell,
    Params = {
      Name = "brandablaze"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "brandconflagration_tar.troy"
    }
  }
}
