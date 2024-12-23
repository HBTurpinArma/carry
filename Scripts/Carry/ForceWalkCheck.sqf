private _down=FALSE;
while{TRUE}do{
	sleep .2;
	if(isNull carryCarry)exitWith{};
	if!(alive carryCarry)exitWith{};
	if!(carryCarry in(attachedObjects player))exitWith{_down=TRUE};
	if((lifeState player)=="INCAPACITATED")exitWith{_down=TRUE};
	if!(alive player)exitWith{};
	if!(isNil {player getVariable ["zade_boc_chestpack",nil]})exitWith{player forceWalk TRUE};
};
if(_down)then{
	if(isNull carryCarry)exitWith{};
	if!(alive carryCarry)exitWith{};
	detach carryCarry;
	carryCarry enableSimulationGlobal TRUE;
};
if(isNil {player getVariable ["zade_boc_chestpack",nil]})exitWith{player forceWalk FALSE};
