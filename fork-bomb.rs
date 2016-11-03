// bomb.rs
// Chad Sharp

#[allow(unconditional_recursion)]
fn main() {
    std::thread::spawn(main);
    main();
}
