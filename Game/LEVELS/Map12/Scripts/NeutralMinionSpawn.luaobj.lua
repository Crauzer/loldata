local L0, L1, L2, L3, L4, L5, L6, L7, L8
L0 = 0
TEAM_UNKNOWN = L0
L0 = 100
TEAM_ORDER = L0
L0 = 200
TEAM_CHAOS = L0
L0 = 300
TEAM_NEUTRAL = L0
L0 = 400
TEAM_MAX = L0
L0 = 1
HOSTILE = L0
L0 = 0
INACTIVE = L0
L0 = {}
L1 = "HA_AP_HealthRelic"
L2 = "AramSpeedShrine"
L0[1] = L1
L0[2] = L2
NeutralMinionNames = L0
L0 = 1000
HERO_EXP_RADIUS = L0
L0 = {}
L1 = {}
L1.GoldGiven = 0
L1.ExpGiven = 0
L1.SoulGiven = 0
L0.HA_AP_HealthRelic = L1
L1 = {}
L1.GoldGiven = 0
L1.ExpGiven = 0
L1.SoulGiven = 0
L0.AramSpeedShrine = L1
DefaultNeutralMinionValues = L0
L0 = {}
NeutralTimers = L0
L0 = {}
L1 = {}
L2 = Make3DPoint
L3 = 8893.9
L4 = -187.7
L5 = 7889
L2, L3, L4, L5, L6, L7, L8 = L2(L3, L4, L5)
L1[1] = L2
L1[2] = L3
L1[3] = L4
L1[4] = L5
L1[5] = L6
L1[6] = L7
L1[7] = L8
L2 = {}
L3 = Make3DPoint
L4 = 7582.1
L5 = -193.8
L6 = 6785.5
L3, L4, L5, L6, L7, L8 = L3(L4, L5, L6)
L2[1] = L3
L2[2] = L4
L2[3] = L5
L2[4] = L6
L2[5] = L7
L2[6] = L8
L3 = {}
L4 = Make3DPoint
L5 = 5929.7
L6 = -194
L7 = 5190.9
L4, L5, L6, L7, L8 = L4(L5, L6, L7)
L3[1] = L4
L3[2] = L5
L3[3] = L6
L3[4] = L7
L3[5] = L8
L4 = {}
L5 = Make3DPoint
L6 = 4790.2
L7 = -188.5
L8 = 3934.3
L5, L6, L7, L8 = L5(L6, L7, L8)
L4[1] = L5
L4[2] = L6
L4[3] = L7
L4[4] = L8
L0[1] = L1
L0[2] = L2
L0[3] = L3
L0[4] = L4
CampSpawnPoints = L0
L0 = {}
L1 = {}
L2 = Make3DPoint
L3 = 8893.9
L4 = -187.7
L5 = 7889
L2, L3, L4, L5, L6, L7, L8 = L2(L3, L4, L5)
L1[1] = L2
L1[2] = L3
L1[3] = L4
L1[4] = L5
L1[5] = L6
L1[6] = L7
L1[7] = L8
L2 = {}
L3 = Make3DPoint
L4 = 7582.1
L5 = -193.8
L6 = 6785.5
L3, L4, L5, L6, L7, L8 = L3(L4, L5, L6)
L2[1] = L3
L2[2] = L4
L2[3] = L5
L2[4] = L6
L2[5] = L7
L2[6] = L8
L3 = {}
L4 = Make3DPoint
L5 = 5929.7
L6 = -194
L7 = 5190.9
L4, L5, L6, L7, L8 = L4(L5, L6, L7)
L3[1] = L4
L3[2] = L5
L3[3] = L6
L3[4] = L7
L3[5] = L8
L4 = {}
L5 = Make3DPoint
L6 = 4790.2
L7 = -188.5
L8 = 3934.3
L5, L6, L7, L8 = L5(L6, L7, L8)
L4[1] = L5
L4[2] = L6
L4[3] = L7
L4[4] = L8
L0[1] = L1
L0[2] = L2
L0[3] = L3
L0[4] = L4
CampFacePoints = L0
L0 = {}
L1 = {}
L2 = "HA_AP_HealthRelic"
L1[1] = L2
L0[1] = L1
L1 = {}
L2 = "HA_AP_HealthRelic"
L1[1] = L2
L0[2] = L1
L1 = {}
L2 = "HA_AP_HealthRelic"
L1[1] = L2
L0[3] = L1
L1 = {}
L2 = "HA_AP_HealthRelic"
L1[1] = L2
L0[4] = L1
PredefinedCamps = L0
L0 = {}
L1 = {}
L0[1] = L1
L1 = {}
L0[2] = L1
L1 = {}
L0[3] = L1
L1 = {}
L0[4] = L1
NeutralMinionCamps = L0
L0 = NeutralMinionCamps
L0 = #L0
NUMBER_OF_CAMPS = L0
function L0()
  local L0, L1, L2, L3, L4, L5, L6
  for L3, L4 in L0, L1, L2 do
    L5 = PreloadCharacter
    L6 = L4
    L5(L6)
  end
  for L3 = L0, L1, L2 do
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L5 = CampSpawnPoints
    L5 = L5[L3]
    L4.Positions = L5
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L5 = CampFacePoints
    L5 = L5[L3]
    L4.FacePositions = L5
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L5 = {}
    L4.UniqueNames = L5
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L5 = {}
    L4.AliveTracker = L5
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L5 = TEAM_NEUTRAL
    L4.Team = L5
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L4.DamageBonus = 0
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L4.HealthBonus = 0
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L5 = INACTIVE
    L4.AIState = L5
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L4.GroupsRespawnTime = 60
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L4.CampLevel = 1
    L4 = NeutralMinionCamps
    L4 = L4[L3]
    L4.TimerType = ""
  end
  L1[1] = L2
  L0.Groups = L1
  L1[1] = L2
  L0.GroupsChance = L1
  L0.GroupsRespawnTime = 40
  L0.GroupDelaySpawnTime = 120
  L0.CampLevel = 3
  L1[1] = L2
  L0.Groups = L1
  L1[1] = L2
  L0.GroupsChance = L1
  L0.GroupsRespawnTime = 40
  L0.GroupDelaySpawnTime = 120
  L0.CampLevel = 3
  L1[1] = L2
  L0.Groups = L1
  L1[1] = L2
  L0.GroupsChance = L1
  L0.GroupsRespawnTime = 40
  L0.GroupDelaySpawnTime = 120
  L0.CampLevel = 3
  L1[1] = L2
  L0.Groups = L1
  L1[1] = L2
  L0.GroupsChance = L1
  L0.GroupsRespawnTime = 40
  L0.GroupDelaySpawnTime = 120
  L0.CampLevel = 3
end
NeutralMinionInit = L0
function L0(A0)
  local L1
  function L1()
    local L0, L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14, L15
    L0 = math
    L0 = L0.random
    L1 = 100
    L0 = L0(L1)
    L1 = 0
    L2 = false
    L3.DamageBonus = L4
    L3.HealthBonus = L4
    for L6 = L3, L4, L5 do
      if L0 <= L7 and L2 == false then
        L2 = true
        L7.AliveTracker = L8
        for L10 = L7, L8, L9 do
          L11 = SpawnNeutralMinion
          L12 = NeutralMinionCamps
          L13 = _UPVALUE0_
          L12 = L12[L13]
          L13 = _UPVALUE0_
          L14 = L6
          L15 = L10
          L11(L12, L13, L14, L15)
          L11 = NeutralMinionCamps
          L12 = _UPVALUE0_
          L11 = L11[L12]
          L11 = L11.AliveTracker
          L11[L10] = true
        end
      end
      L1 = L1 + L7
    end
  end
  return L1
end
CreateRespawnNeutralTimer = L0
function L0()
  local L0, L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14, L15, L16, L17, L18
  for L3 = L0, L1, L2 do
    for L7 = L4, L5, L6 do
      L8[L7] = L9
      for L11 = L8, L9, L10 do
        L12 = NeutralMinionCamps
        L12 = L12[L3]
        L12 = L12.UniqueNames
        L12 = L12[L7]
        L13 = NeutralMinionCamps
        L13 = L13[L3]
        L13 = L13.Groups
        L13 = L13[L7]
        L13 = L13[L11]
        L14 = L3
        L15 = "."
        L16 = L7
        L17 = "."
        L18 = L11
        L13 = L13 .. L14 .. L15 .. L16 .. L17 .. L18
        L12[L11] = L13
      end
    end
    L7 = CreateRespawnNeutralTimer
    L7 = L7(L8)
    L5[L6] = L7
    L7 = L4 + 1
    L5.Timer = L6
  end
end
InitializeNeutralMinionInfo = L0
function L0(A0)
  local L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14, L15, L16
  L1 = NeutralMinionCamps
  L1 = #L1
  if A0 <= L1 then
    L1 = math
    L1 = L1.random
    L2 = 100
    L1 = L1(L2)
    L2 = 0
    L3 = false
    for L7 = L4, L5, L6 do
      if 0 < L8 and L3 == false then
        L3 = true
        L8.AliveTracker = L9
        for L11 = L8, L9, L10 do
          L12 = NeutralMinionCamps
          L12 = L12[A0]
          L12 = L12.AliveTracker
          L12[L11] = true
        end
        L11 = NeutralMinionCamps
        L11 = L11[A0]
        L11 = L11.GroupDelaySpawnTime
        L12 = false
        L8(L9, L10, L11, L12)
      else
        if L1 <= L8 and L3 == false then
          L3 = true
          L8.AliveTracker = L9
          for L11 = L8, L9, L10 do
            L12 = SpawnNeutralMinion
            L13 = NeutralMinionCamps
            L13 = L13[A0]
            L14 = A0
            L15 = L7
            L16 = L11
            L12(L13, L14, L15, L16)
            L12 = NeutralMinionCamps
            L12 = L12[A0]
            L12 = L12.AliveTracker
            L12[L11] = true
          end
        end
        L2 = L2 + L8
      end
    end
  end
end
SpawnInitialNeutralMinions = L0
function L0(A0, A1, A2)
  local L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14, L15, L16, L17
  L3 = true
  L4 = 0
  for L8 = L5, L6, L7 do
    for L12 = L9, L10, L11 do
      for L16 = L13, L14, L15 do
        L17 = NeutralMinionCamps
        L17 = L17[L8]
        L17 = L17.UniqueNames
        L17 = L17[L12]
        L17 = L17[L16]
        if L17 == A0 then
          L4 = L8
          L17 = NeutralMinionCamps
          L17 = L17[L8]
          L17 = L17.AliveTracker
          L17[L16] = false
        end
      end
    end
  end
  if 0 < L4 then
    for L8 = L5, L6, L7 do
      if L9 == true then
        L3 = false
      end
    end
    if L3 == true then
      L8 = NeutralMinionCamps
      L8 = L8[L4]
      L8 = L8.GroupsRespawnTime
      L5(L6, L7, L8, L9)
    end
  end
end
NeutralMinionDeath = L0
