/// @description Insert description here
// You can write your code in this editor
var n = 10000000;

var t1 = get_timer();
benchmark_array(n);
var t2 = get_timer();
show_debug_message("Array time = " + string((t2-t1)/1000000));

