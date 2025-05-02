data:extend({
{
	name = "fusionthruster-min-performance-values-fluid-volume",
	type = "double-setting",
	setting_type = "startup",
	default_value = 0.1,
	order = "a"
},
{
	name = "fusionthruster-min-performance-values-fluid-usage",
	type = "double-setting",
	setting_type = "startup",
	default_value = 0.05,
	order = "a"
},
{
	name = "fusionthruster-min-performance-values-effectivity",
	type = "double-setting",
	setting_type = "startup",
	default_value = 0.25,
	order = "a"
},
{
	name = "fusionthruster-max-performance-values-fluid-volume",
	type = "double-setting",
	setting_type = "startup",
	default_value = 1,
	order = "ab"
},
{
	name = "fusionthruster-max-performance-values-fluid-usage",
	type = "double-setting",
	setting_type = "startup",
	default_value = 2,
	order = "ab"
},
{
	name = "fusionthruster-max-performance-values-effectivity",
	type = "double-setting",
	setting_type = "startup",
	default_value = 1.4,
	order = "ab"
},
{
	type = "string-setting",
	name = "fusionthruster-fusion-plasma-fuel-value",
	setting_type = "startup",
	default_value = "1MJ",
	order = "b"
},
{
	type = "string-setting",
	name = "fusionthruster-thruster-chamber-energy-value",
	setting_type = "startup",
	default_value = "100J",
	order = "c"
},
{
	type = "double-setting",
	name = "fusionthruster-thruster-chamber-conversion-value",
	setting_type = "startup",
	default_value = 100,
	order = "c"
}
})