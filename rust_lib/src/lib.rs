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
