# OKS_fnc_ChatGlobal patch notes

This mission is currently kept on the older server-safe call pattern. The newer icon-based implementation is preserved here so it can be re-applied when the server branch is updated.

## Current server-safe pattern

Use these when the official server is on the legacy branch:

```sqf
["ATLAS","side","BLUFOR faction detected. Operation set to BREAKTHROUGH rescue.","ATLAS"] spawn OKS_fnc_ChatGlobal;
["ATLAS","side","NO BLUFOR faction detected. Operation set to Independent DEFENCE.","ATLAS"] spawn OKS_fnc_ChatGlobal;

["CDF Command", "side", "The Chedaki will attack the Outpost in 5 minutes, good luck, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;

["CDF Command", "side", "The nearby villages of Mogilevka and Nadezhdino are occupied by artillery elements, we must silence the guns to help the frontline, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;

["CDF Command", "side", "1st Platoon this is CDF Command, friendly SU-25s are rolling in for attack runs on the flanks of the village, Command out.", "CDF Command", 25000, 100, west] spawn OKS_fnc_ChatGlobal;
```

## Newer implementation to restore later

When the server gets the newer branch again, this is the version to re-enable:

```sqf
["ATLAS","side","BLUFOR faction detected. Operation set to BREAKTHROUGH rescue.","ATLAS", sideUnknown, "\OKS_GOL_Misc\data\images\logo.paa"] spawn OKS_fnc_ChatGlobal;
["ATLAS","side","NO BLUFOR faction detected. Operation set to Independent DEFENCE.","ATLAS", sideUnknown, "\OKS_GOL_Misc\data\images\logo.paa"] spawn OKS_fnc_ChatGlobal;

["CDF Command", "side", "The Chedaki will attack the Outpost in 5 minutes, good luck, Command out.", "CDF Command", independent, "\ca\data\flag_Chernarus_co.paa"] spawn OKS_fnc_ChatGlobal;

["CDF Command", "side", "The nearby villages of Mogilevka and Nadezhdino are occupied by artillery elements, we must silence the guns to help the frontline, Command out.", "CDF COMMAND", sideUnknown, "\ca\data\flag_Chernarus_co.paa"] spawn OKS_fnc_ChatGlobal;

["CDF Command", "side", "1st Platoon this is CDF Command, friendly SU-25s are rolling in for attack runs on the flanks of the village, Command out.", "CDF COMMAND", west, "\ca\data\flag_Chernarus_co.paa"] spawn OKS_fnc_ChatGlobal;
```

## Per-call patch map

### init.sqf

- Legacy:
  ```sqf
  ["ATLAS","side","BLUFOR faction detected. Operation set to BREAKTHROUGH rescue.","ATLAS"] spawn OKS_fnc_ChatGlobal;
  ["ATLAS","side","NO BLUFOR faction detected. Operation set to Independent DEFENCE.","ATLAS"] spawn OKS_fnc_ChatGlobal;
  ["CDF Command", "side", "The Chedaki will attack the Outpost in 5 minutes, good luck, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
  ```

- Newer:
  ```sqf
  ["ATLAS","side","BLUFOR faction detected. Operation set to BREAKTHROUGH rescue.","ATLAS", sideUnknown, "\OKS_GOL_Misc\data\images\logo.paa"] spawn OKS_fnc_ChatGlobal;
  ["ATLAS","side","NO BLUFOR faction detected. Operation set to Independent DEFENCE.","ATLAS", sideUnknown, "\OKS_GOL_Misc\data\images\logo.paa"] spawn OKS_fnc_ChatGlobal;
  ["CDF Command", "side", "The Chedaki will attack the Outpost in 5 minutes, good luck, Command out.", "CDF Command", independent, "\ca\data\flag_Chernarus_co.paa"] spawn OKS_fnc_ChatGlobal;
  ```

### spawnList.sqf

- Legacy pattern used everywhere now:
  ```sqf
  ["CDF Command", "side", "Task Force Alpha this is CDF Command, the Chedaki are mounting for a final attack, dig in and repel the final attackers, ETA 3 minutes, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
  ["CDF Command", "side", "The nearby villages of Mogilevka and Nadezhdino are occupied by artillery elements, we must silence the guns to help the frontline, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
  ["CDF Command", "side", "Outpost Harvest, this is CDF Command, enemy mortars are zeroing in on your position. Dig in, the attack is imminent, Command out.", "CDF Command", 25000, 100, independent] spawn OKS_fnc_ChatGlobal;
  ```

- Newer pattern that was previously used:
  ```sqf
  ["CDF Command", "side", "Task Force Alpha this is CDF Command, the Chedaki are mounting for a final attack, dig in and repel the final attackers, ETA 3 minutes, Command out.", "CDF COMMAND", sideUnknown, "\ca\data\flag_Chernarus_co.paa"] spawn OKS_fnc_ChatGlobal;
  ["CDF Command", "side", "The nearby villages of Mogilevka and Nadezhdino are occupied by artillery elements, we must silence the guns to help the frontline, Command out.", "CDF COMMAND", sideUnknown, "\ca\data\flag_Chernarus_co.paa"] spawn OKS_fnc_ChatGlobal;
  ["CDF Command", "side", "Outpost Harvest, this is CDF Command, enemy mortars are zeroing in on your position. Dig in, the attack is imminent, Command out.", "CDF COMMAND", independent, "\ca\data\flag_Chernarus_co.paa"] spawn OKS_fnc_ChatGlobal;
  ```

## Quick patch note

If the server update lands, the simplest switch-back is:

1. Restore the icon-based newer calls for `ATLAS` and `CDF Command`.
2. Re-add `sideUnknown` and the flag path where it was previously used.
3. Keep the legacy branch as the fallback until server validation confirms the new branch is active.
