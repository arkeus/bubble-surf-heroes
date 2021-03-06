package io.arkeus.bsh.game.world {
	public class WorldBuilder {
		private static const tilesetFactory:TilesetFactory = new TilesetFactory;
		private static const tilemapDataGenerator:TilemapDataGenerator = new TilemapDataGenerator;
		
		private var level:uint;
		
		public function WorldBuilder(level:uint) {
			this.level = level;
		}
		
		public function build():World {
			var data:Array = tilemapDataGenerator.generate(level);
			var tileset:Class = tilesetFactory.createTileset(level);
			
			return new World(data[0], data[1], tileset).create();
		}
	}
}
