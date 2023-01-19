
lift_cover = 0; // [0:0.1:1]

/* [Hidden] */
light_strip_width = 10; // mm
light_strip_section_length = 100; // mm (~4")
light_strip_thickness = 2.5; // mm

cover_height = 110;
light_width = 75; // mm
base_height = 40; // mm

module base() {
  color("#222")
    cube([light_width, light_width, base_height]);
}

module cover() {
  color("#eee8")
    cube([light_width, light_width, cover_height]);
}

module led_strip_mount() {
  color("#eee8")
    cube([light_width - 20, light_width - 20, cover_height - 20]);
}

base();

translate([0, 0, base_height + (cover_height * lift_cover)])
  cover();

translate([10, 10, base_height])
  led_strip_mount();
