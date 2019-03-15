/* This file runs on mission start */
if (dtk_server)exitWith{};
if (dtk_cop)exitWith {};
[]spawn speedcam_handler;
[]call speedcam_markers;