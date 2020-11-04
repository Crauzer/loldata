NotSingleTargetSpell = false
DoesntTriggerSpellCasts = false
BuffTextureName = "Summoner_fortify.dds"
BuffName = "FortifyBuff"
AutoBuffActivateEffect = ""
AutoBuffActivateAttachBoneName = ""
BuffOnHitUnitBuildingBlocks = {
  {
    Function = BBIf,
    Params = {Src1Var = "Target", CompareOp = CO_IS_TYPE_AI},
    SubBlocks = {
      {
        Function = BBIf,
        Params = {Src1Var = "Target", CompareOp = CO_IS_NOT_TURRET},
        SubBlocks = {
          {
            Function = BBIf,
            Params = {Src1Var = "Target", CompareOp = CO_IS_NOT_HERO},
            SubBlocks = {
              {
                Function = BBMath,
                Params = {
                  Src1Var = "DamageAmount",
                  Src1Value = 0,
                  Src2Value = 9,
                  DestVar = "DamageAmount",
                  MathOp = MO_ADD
                }
              }
            }
          }
        }
      }
    }
  }
}
