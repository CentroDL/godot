#holds all of the information to populate each page
#structure of each entry is
#  :path_name => {
#   actions: [aray of text to be displayed]
#   question: the question being asked on page
#   options: { a hash of :button_text => target_paths }
#             each button_text key is cleaned up in the index.erb page
# }
ROUTES = {
  :root => {
    actions: ["Opening theme and titles",
    "Establishing shot of San Francisco row Houses"
    ],
    question: "Do we cut to the kids or parents?",
    options: {kids: 'kids', parents: 'parents'}
  },#root

  :kids => {
    actions: ['The Kids', 'Cut to one of the kids.'],
    question: "Are they cute or having a problem?",
    options: {cute: 'cute', problem: 'problem'}
  },#kids

  :problem => {
    actions: [],
    question: "Which kids having the problem?",
    options: { stephanie: 'credits', dJ: 'credits', michelle: '/'}
  },#problem

  :parents => {
    actions: [ 'The Parents' ],
    question: "Which Parent?",
    options: { danny_tanner: 'problem', uncle_jesse: '/', uncle_joey: '/' }
  },#parents

  :cute => {
    actions: [],
    question: "Is there a misunderstanding?",
    options: { no: '/', yes: 'credits'}
    },#cute

  :credits => {
    actions: ["Family hugs, dog barks.","Roll Credits"],
    question: nil,
    options: { try_again: '/'}
  }#credits

}#routes
