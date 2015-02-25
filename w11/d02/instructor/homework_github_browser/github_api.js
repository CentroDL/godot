console.log('github_api loaded');

var baseUrl = 'https://api.github.com';

var apiToken = 'your-api-token';

var headers = {
  Authorization: 'token ' + apiToken
};

var $gists;
var $repos;
var $results;
var $searchForm;
var $searchLang;
var $searchSnippet
var $userInfo;
var $userName;
var queriedName;

var clearSearch = function(){
  $repos.html('');
  $gists.html('');
  $userInfo.html('');
  $userName.val('').focus();
};

var fetchUser = function(name) {
  var path = '/users/' + name;
  return $.ajax({
    type: 'GET',
    headers: headers,
    dataType: 'json',
    url: baseUrl + path
  });
};

var fetchRepos = function(name){
  var path = '/users/' + name + '/repos';
  return $.ajax({
    type: 'GET',
    headers: headers,
    dataType: 'json',
    url: baseUrl + path
  });
};

var fetchGists = function(name) {
  var path = '/users/' + name + '/gists';
  return $.ajax({
    type: 'GET',
    headers: headers,
    dataType: 'json',
    url: baseUrl + path
  });
};

var fetchResults = function(snippet, lang) {
  var path = '/search/code';
  var params = '?q=' + snippet + '+language:' + lang + '+user:' + queriedName;
  return $.ajax({
    type: 'GET',
    headers: headers,
    dataType: 'json',
    url: baseUrl + path + params
  });
}

var renderUser = function(userData) {
  var $img = $('<img>').attr('src', userData.avatar_url);
  var $p = $('<p>').text(userData.login);
  $userInfo.append($img, $p);
  $('.user-controls').show();
};

var renderRepos = function(reposData) {
  $repos.show();
  $searchForm.hide();
  $gists.hide();
  var repo, $repoLink;
  for (var i = 0, len = reposData.length; i < len; i++) {
    repo = reposData[i];
    $repoLink = $('<a>').text(repo.full_name).attr('href', repo.html_url);
    $('<li>').append($repoLink).appendTo($repos);
  }
};

var renderGists = function(gistsData) {
  $gists.show();
  $searchForm.hide();
  $repos.hide();
  var gist, $gistLink;
  for (var i = 0, len = gistsData.length; i < len; i++) {
    gist = gistsData[i];
    $gistLink = $('<a>').text(gist.description).attr('href', gist.html_url);
    $('<li>').append($gistLink).appendTo($gists);
  }
};

var renderResults = function(resultsData) {
  console.log(resultsData);
  var result;
  for (var i = 0, len = resultsData.items.length; i < len; i++) {
    result = resultsData.items[i];
    $resultLink = $('<a>').text(result.path).attr('href', result.html_url);
    $('<li>').append($resultLink).appendTo($results)
  }
};

var handleUser = function(e){
  e.preventDefault();
  queriedName = $userName.val();
  clearSearch();
  var response = fetchUser(queriedName);
  response.done(renderUser);
};

var handleRepos = function(e){
  e.preventDefault();
  var response = fetchRepos(queriedName);
  response.done(renderRepos);
};

var handleGists = function(e) {
  e.preventDefault();
  var response = fetchGists(queriedName);
  response.done(renderGists);
};

var handleSearch = function(e){
  e.preventDefault();
  var snippet = $searchSnippet.val();
  var lang = $searchLang.val();
  var response = fetchResults(snippet, lang);
  response.done(renderResults);
}

var cacheSelectors = function(){
  $gists = $('.gists');
  $repos = $('.repos');
  $results = $('.results');
  $searchForm = $('#search-code');
  $searchLang = $('#search-lang');
  $searchSnippet = $('#search-snippet');
  $userInfo = $('.user-info');
  $userName = $('input[name=username]');
};

var showSearch = function(e) {
  e.preventDefault();
  $gists.hide();
  $repos.hide();
  $searchForm.show();
}

$(document).ready(function(){
  cacheSelectors();
  $('#search-user').on('submit', handleUser);
  $searchForm.on('submit', handleSearch);
  $('.show-repos').on('click', handleRepos);
  $('.show-gists').on('click', handleGists);
  $('.show-search').on('click', showSearch);
});

