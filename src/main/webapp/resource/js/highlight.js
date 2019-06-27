 var app = angular.module('plunker', []);
console.clear();

app.controller('MainCtrl', function($scope) {
  var vm = this;
  
  vm.keywords = "foo bar baz";
  
  vm.textToHighlight = "Bar food is a bazillion times better with beer."

});


app.filter('highlightKeywords', function($sce) {
  
  
    // returns all words in a sentence as an array, ignoring extra whitespace
     var stringToArray = function(input) {
       if(input)
       {
         return input.match(/\S+/g);
           
       }
       else
       {
         return [];
       }
     };

    // returns regex that basically says 'match any word that starts with one of my keywords'
    var getRegexPattern = function(keywordArray) {
      

      var pattern = "(^|\\b)(" + keywordArray.join("|") + ")";
      
      return new RegExp(pattern, "gi");
      
    };
  
    return function(textToHighlight, keywords) {
      var filteredText = textToHighlight;
      if(keywords !== "") {
        
        var keywordList = stringToArray(keywords);
        
        var pattern = getRegexPattern(keywordList);
        console.log(pattern);
        
        filteredText = textToHighlight.replace(pattern, '<span class="highlighted">$2</span>');

      }
      
      return $sce.trustAsHtml(filteredText);
    };
});