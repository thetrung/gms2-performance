use std::time::{SystemTime};

fn benchmark_array(loops: i128){
    let mut sum = 0;
    let a : Vec<i128> = vec![10, 20, 30, 40, 50];

    for _ in 0..loops {
        sum = sum + a[0];
        sum = sum + a[1];
        sum = sum + a[2];
        sum = sum + a[3];
        sum = sum + a[4];
    }

    println!("Array sum = {}", sum);
}

fn main() {
    let n = 10000000;
    // start clock
    let start = SystemTime::now();
    // running test
    benchmark_array(n);

    // stop
    let elapsed = start.elapsed().unwrap().as_millis() as f64;

    println!("Array time = {} ms",  elapsed / 1000.0)
}