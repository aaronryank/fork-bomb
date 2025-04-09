const std = @import("std");

pub fn main() void {
    _ = std.Thread.spawn(.{}, main, .{}) catch {};
    while (true) {}
}
