/* This file runs on mission start */
if (dtk_server)exitWith{};
[]spawn speedcam_handler;
[]call speedcam_markers;