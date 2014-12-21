#holds all of the information to populate each page
#structure of each entry is
#  :path_name => {
#   actions: [aray of text to be displayed]
#   question: the question being asked on page
#   images: [an array or image files for the page]
#   options: { a hash of :button_text => target_paths }
#             each button_text key is cleaned up in the index.erb page
# }
ROUTES = {
  :root => {
    actions: ["Opening theme and titles",
    "Establishing shot of San Francisco row Houses"
    ],
    question: "Do we cut to the kids or parents?",
    images: ['fh-bridge.jpg'],
    options: {kids: 'kids', parents: 'parents'}
  },#root

  :kids => {
    actions: ['The Kids', 'Cut to one of the kids.'],
    question: "Are they cute or having a problem?",
    images: ['fh-cute-kid.gif', 'fh-cry-kid.jpg'],
    options: {cute: 'cute', problem: 'problem'}
  },#kids

  :problem => {
    actions: [],
    question: "Which kids having the problem?",
    images: ['fh-stephanie.jpg','fh-dj.jpg','fh-michelle.jpg'],
    options: { stephanie: 'credits', dJ: 'credits', michelle: '/'}
  },#problem

  :parents => {
    actions: [ 'The Parents' ],
    question: "Which Parent?",
    images: ['fh-danny.png', 'fh-jesse-cool.png','fh-joey.jpg'],
    options: { danny_tanner: 'problem', uncle_jesse: '/', uncle_joey: '/' }
  },#parents

  :cute => {
    actions: [],
    question: "Is there a misunderstanding?",
    images: [],
    options: { no: '/', yes: 'credits'}
    },#cute

  :credits => {
    actions: ["Family hugs, dog barks.","Roll Credits"],
    question: nil,
    images: ['fh-comet.jpg'],
    options: { try_again: '/'}
  }#credits

}#routes
