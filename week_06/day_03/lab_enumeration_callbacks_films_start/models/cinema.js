const Cinema = function (films) {
  this.films = films;
};



Cinema.prototype.filmByTitels = function (films) {
  const result = films.map((film) =>{
    return film.title;
  });
  return result;
}


module.exports = Cinema;
