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
    actions: [
    "Establishing shot of San Francisco row Houses"
    ],
    question: "Do we cut to the kids or parents?",
    images: ['fh-bridge.jpg'],
    #i really don't like sending the messages through query strings but i don't see anything useful in the Sinatra docs yet. Any tips?
    options: {kids: 'kids?info=Cut to one of the kids.', parents: 'parents'}
  },#root

  :kids => {
    actions: ['The Kids'],
    question: "Are they cute or having a problem?",
    images: ['fh-cute-kid.gif', 'fh-cry-kid.jpg'],
    options: {cute: 'cute', problem: 'problem'}
  },#kids

  :problem => {
    actions: [],
    question: "Which kids having the problem?",
    images: ['fh-stephanie.jpg','fh-dj.jpg','fh-michelle.jpg'],
    options: { stephanie: 'credits?info=Everyone ignores Stephanie and she cries in frustration. Stephanie say%3A How Rude!', dJ: 'credits?info=DJ gets nutty until Uncle Jesse has a heart to heart.', michelle: '?info=It\'s not a real problem; Uncle Joey does a funny voice. Michelle says%3A You got it dude!'}
  },#problem

  :parents => {
    actions: [ 'The Parents' ],
    question: "Which Parent?",
    images: ['fh-danny.png', 'fh-jesse-cool.png','fh-joey.jpg'],
    options: { danny_tanner: 'problem?info=A child explains a problem while Danny Tanner Makes pancakes.', uncle_jesse: '?info=Uncle Jesse acts cool, but is interrupted by Michelle. Michelle says%3A You got it dude!', uncle_joey: '?info=Uncle Joey does a funny voice.' }
  },#parents

  :cute => {
    actions: [],
    question: "Is there a misunderstanding?",
    images: [],
    options: { no: '?info=One of the kids does something mildly naughty, is caught and reprimanded gently.', yes: 'credits?info=There is a comedy of errors where a kid misunderstands an adult. Stephanie says%3A How Rude!'}
    },#cute

  :credits => {
    actions: ["Family hugs, dog barks.","Roll Credits"],
    question: nil,
    images: ['fh-comet.jpg'],
    options: { try_again: ''}
  }#credits

}#routes
