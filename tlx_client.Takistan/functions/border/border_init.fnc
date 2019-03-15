if (dtk_server)exitWith {};


{
	[(_x select 1),(_x select 0),(_x select 5),(_x select 2),(_x select 4),(_x select 3),[(_x select 6), (_x select 7)],"",(_x select 8)]call core_createMarkerLocal;
}forEAch border_array;
