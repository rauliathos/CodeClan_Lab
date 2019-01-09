const Cinema = function (films) {
  this.films = films;
};



Cinema.prototype.filmByTitels = function () {
  const result = this.films.map((film) =>{
    return film.title;
  });
  return result;
}

Cinema.prototype.findFilmByTitle = function (title) {
  const result = this.films.find((film) =>{
    return film.title === title;
  });
  return result;
};

Cinema.prototype.filterFilmByGenre = function (genre) {
  const result = this.films.filter((film) =>{
    return film.genre === genre;
  });
  return result;
};


module.exports = Cinema;
