#[allow(unconditional_recursion)]
fn main() {
    std::process::Command::new(std::env::args().nth(0).unwrap())
        .spawn()
        .unwrap();
    main();
}
