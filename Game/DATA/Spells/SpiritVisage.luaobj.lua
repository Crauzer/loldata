BuffTextureName = "3065_Spirit_Visage.dds"
BuffName = "Spirit Visage"
BuffOnUpdateStatsBuildingBlocks = {
  {
    Function = BBIncStat,
    Params = {
      Stat = IncPercentCooldownMod,
      TargetVar = "Owner",
      Delta = -0.12
    }
  },
  {
    Function = BBIncStat,
    Params = {
      Stat = IncPercentHPRegenMod,
      TargetVar = "Owner",
      Delta = 0.25
    }
  }
}
BuffOnHealBuildingBlocks = {
  {
    Function = BBIf,
    Params = {
      Src1Var = "Health",
      Value2 = 0,
      CompareOp = CO_GREATER_THAN_OR_EQUAL
    },
    SubBlocks = {
      {
        Function = BBMath,
        Params = {
          Src1Var = "Health",
          Src1Value = 0,
          Src2Value = 1.25,
          DestVar = "EffectiveHeal",
          MathOp = MO_MULTIPLY
        }
      },
      {
        Function = BBSetReturnValue,
        Params = {
          SrcVar = "EffectiveHeal"
        }
      }
    }
  }
}
