#[no_mangle]
pub extern "C" fn add_one_rust(x: i32) -> i32 {
    add_one(x)
}

#[no_mangle]
pub extern "C" fn add_two_rust(x: i32) -> i32 {
    add_two(x)
}

fn add_one(x: i32) -> i32 {
    x + 1
}

fn add_two(x: i32) -> i32 {
    x + 2
}

#[cfg(test)]
mod tests {
    use crate::{add_one, add_two};

    #[test]
    fn it_works() {
        assert_eq!(add_one(1), 2);
        assert_eq!(add_two(1), 3);
    }
}
