module prover_sample::example {
    fun calc(x: u64, y :u64) :u64 {
        (x + y) / x
    }

    // flawed specifications
    spec calc {
        aborts_if x < 0;
    }

    // effective specifications
    // spec calc {
    //     aborts_if x + y > max_u64();
    //     aborts_if x == 0;
    // }
}


