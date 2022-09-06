function benchmark_array(loops){
    var a = [];
    a[0] = 10; a[1] = 20; a[2] = 30; a[3] = 40; a[4] = 50;
    var sum = 0;
  
    for (var i = 0; i < loops; i++) {
        sum += a[0]; sum += a[1]; sum += a[2]; sum += a[3]; sum += a[4];
    }
  
    show_debug_message("Array sum = " + string(sum));
}