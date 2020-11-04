NotSingleTargetSpell = false
TriggersSpellCasts = true
TargetExecuteBuildingBlocks = {
  {
    Function = BBGetTeamID,
    Params = {TargetVar = "Attacker", DestVar = "TeamID"}
  },
  {
    Function = BBIf,
    Params = {
      Src1Var = "Target",
      Src2Var = "Owner",
      CompareOp = CO_SAME_TEAM
    },
    SubBlocks = {
      {
        Function = BBIncPAR,
        Params = {
          TargetVar = "Target",
          Delta = 0,
          PARType = PAR_MANA,
          DeltaByLevel = {
            50,
            100,
            150,
            200,
            250
          }
        }
      },
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Target",
          EffectName = "soraka_infuse_ally_tar.troy",
          Flags = 0,
          EffectIDVar = "Infuse",
          TargetObjectVar = "Target",
          SpecificUnitOnlyVar = "Owner",
          SpecificTeamOnly = TEAM_UNKNOWN,
          UseSpecificUnit = false,
          FOWTeam = TEAM_UNKNOWN,
          FOWTeamOverrideVar = "TeamID",
          FOWVisibilityRadius = 10,
          SendIfOnScreenOrDiscard = true
        }
      }
    }
  },
  {
    Function = BBElse,
    Params = {},
    SubBlocks = {
      {
        Function = BBApplyDamage,
        Params = {
          AttackerVar = "Attacker",
          TargetVar = "Target",
          DamageByLevel = {
            50,
            100,
            150,
            200,
            250
          },
          Damage = 0,
          DamageType = MAGIC_DAMAGE,
          SourceDamageType = DAMAGESOURCE_SPELL,
          PercentOfAttack = 1,
          SpellDamageRatio = 0.6,
          PhysicalDamageRatio = 1,
          IgnoreDamageIncreaseMods = false,
          IgnoreDamageCrit = false
        }
      },
      {
        Function = BBApplySilence,
        Params = {
          AttackerVar = "Attacker",
          TargetVar = "Target",
          Duration = 0,
          DurationByLevel = {
            1,
            1.5,
            2,
            2.5,
            3
          }
        }
      },
      {
        Function = BBSpellEffectCreate,
        Params = {
          BindObjectVar = "Target",
          EffectName = "soraka_infuse_enemy_tar.troy",
          Flags = 0,
          EffectIDVar = "Infuse",
          TargetObjectVar = "Target",
          SpecificUnitOnlyVar = "Owner",
          SpecificTeamOnly = TEAM_UNKNOWN,
          UseSpecificUnit = false,
          FOWTeam = TEAM_UNKNOWN,
          FOWTeamOverrideVar = "TeamID",
          FOWVisibilityRadius = 10,
          SendIfOnScreenOrDiscard = true
        }
      }
    }
  }
}
PreLoadBuildingBlocks = {
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "soraka_infuse_ally_tar.troy"
    }
  },
  {
    Function = BBPreloadParticle,
    Params = {
      Name = "soraka_infuse_enemy_tar.troy"
    }
  }
}
