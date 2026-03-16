 params["_src", "_animalType"];

  private["_animalClassname"];
  if ( _animalType == "Dog" ) then {
    _animalClassname = "Alsatian_Random_F";
  };
  if ( _animalType == "Sheep" ) then {
    _animalClassname = "Sheep_random_F";
  };
  if ( _animalType == "Goat" ) then {
    _animalClassname = "Goat_random_F";
  };
  if ( _animalType == "Rabbit" ) then {
    _animalClassname = "Rabbit_F";
  };
  if ( _animalType == "Hen" ) then {
    _animalClassname = "Hen_random_F";
  };
  if ( _animalType == "Snake" ) then {
    _animalClassname = "Snake_random_F";
  };

  _animal = createAgent [_animalClassname, getPos _src, [], 5, "CAN_COLLIDE"];
  _animal setVariable ["BIS_fnc_animalBehaviour_disable", true];

  nul = [_src, _animal, _animalType] spawn {
    params["_src", "_animal", "_animalType"];
    _animalGoMove = _animalType + "_Run";
    _animalIdleMove = _animalType + "_Idle_Stop";
    if ( _animalType == "Dog" ) then {
      _animalGoMove = "Dog_Sprint";
    };
    if ( _animalType == "Rabbit" ) then {
      _animalGoMove = "Rabbit_Hop";
    };
    if ( _animalType == "Hen" ) then {
      _animalGoMove = "Hen_Walk";
    };
    if ( _animalType == "Snake" ) then {
      _animalGoMove = "Snakes_Move";
    };
    _animalMoving = true;
    _moveDist = 5;

    while {alive _animal} do 
    {
      if (_animal distance _src > _moveDist) then {
        if ( !_animalMoving ) then {
          _animal playMove _animalGoMove;
          _animalMoving = true;
        };
      } else {
        if ( _animalMoving ) then {
          _animal playMove _animalIdleMove;
          _animalMoving = false;
        };
      };

      if ( _animalMoving ) then {
        _animal moveTo getPos _src;
      };

      sleep 0.5;
    };
  };