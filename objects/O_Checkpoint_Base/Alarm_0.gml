chptX = x + 16;
chptY = y + 46;

array_push(global.checkpoints, id);

if (glass == noone) {
	glass = instance_create_layer(x, y, "Glass", O_Checkpoint_Glass);
}