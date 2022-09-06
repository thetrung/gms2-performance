# gms_perf
To test various things with GMS2 engine, but mostly in performance.

### 1. GMS2
- array sum test, taken [here](https://forum.yoyogames.com/index.php?threads/performance-testing-including-structs.78343/) :

      function benchmark_array(loops){
          var a = [];
          a[0] = 10; a[1] = 20; a[2] = 30; a[3] = 40; a[4] = 50;
          var sum = 0;

          for (var i = 0; i < loops; i++) {
              sum += a[0]; sum += a[1]; sum += a[2]; sum += a[3]; sum += a[4];
          }

          show_debug_message("Array sum = " + string(sum));
      }
      
      var n = 10000000;
      var t1 = get_timer();
      benchmark_array(n);
      var t2 = get_timer();
      show_debug_message("Array time = " + string((t2-t1)/1000000));
      
- I don't want to test struct yet as ppl said it's even slower. So don't need to. 


### 2. Lua/LuaJIT
- Same code but with minor changes.


### 3. Result 

-- Lua 5.4
 Array sum = 1500000000
 Array time = 0.348525

-- LuaJIT
 Array sum = 1500000000
 Array time = 0.050399
 
-- GMS2022.6.1.40
 Array sum = 1500000000
 Array time = 4.59
 
 
 ### 4. Takeaway
 GML is pretty slow, even slower than my own VM in Rust (fib, asmr) for now. So maybe, don't expect performant things to run well on it. But small, simple games that don't require performance is ok.

