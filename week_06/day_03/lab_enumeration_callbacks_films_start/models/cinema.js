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

// Cinema.prototype.findFilmByTitle = function (films, title) {
//   const foundFilme = [];
//   for (const film of films){
//     if (film.title === title){
//       foundFilme.push(film)
//     }
//   }
//   return foundFilme
// };

module.exports = Cinema;
