module coin_sample::example {

    struct Coin has key {
        value: u64,
    }

    public entry fun mint(account: signer, value: u64)  {
        move_to(&account, Coin { value })
    }
}
