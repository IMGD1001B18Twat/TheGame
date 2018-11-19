/// @description Insert description here
// You can write your code in this editor


if (!keyboard_check(ord("A")) && !keyboard_check(ord("D"))) hspeed = 0

if (on_ground && keyboard_check_pressed(ord("W"))) vspeed = -22