function Song(opts) {
  this.opts = opts || {};
}

Song.prototype.persistFavoriteStatus = function(value) {
  // something complicated
  throw new Error("not yet implemented");
};
