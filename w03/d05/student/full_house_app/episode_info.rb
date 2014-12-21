ROUTES = {
  root: {
    actions: ["Opening theme and titles",
    "Establishing shot of San Francisco row Houses"
    ],
    question: "Do we cut to the kids or parents?",
    options: ['kids', 'parents']
  },#root

  kids: {
    actions: ['The Kids', 'Cut to one of the kids.'],
    question: "Are they cute or having a problem?",
    options: ['cute', 'problem']
  },#kids

  parents: {
    actions: [ 'The Parents' ],
    question: "Which Parent?",
    options:[ 'Danny Tanner', 'Uncle Jesse', 'Uncle Joey']
  },#parents

  dannytanner: {
    actions: [ 'Danny Tanner', 'A child explains a problem while Danny makes pancakes.' ],
    question: "Which kids having the problem?",
    options:[ 'Stephanie', 'DJ', 'Michelle']
  },

  unclejesse: {
    actions: ["Uncle Jesse", "Uncle Jesse acts cool, but is interrupted by Michelle.", "Michelle says: \"You got it dude!\"", "Establishing shot of San Francisco row Houses"],
    question: "Do we cut to the kids or parents?",
    options: ['kids','parents']
    },

  unclejoey: {
    actions: ['Uncle Joey', 'Uncle Joey does a funny voice.', 'Establishing shot of San Francisco row houses.'],
    question: "Do we cut to the kids or parents?",
    options: ['kids','parents']
    },

}#routes
