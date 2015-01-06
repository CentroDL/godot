# Sinatra Exercises

1. Create a Site Counter that increments everytime someone visits the homepage. Display "Hello! Visitor Number NUMBER"

1. Create a unique site counter for each page to show how many times a page has been visited.

1. Create route handlers to display pages for each department and item from the Amazon module with the following pattern "store/:department/:item_id"

1. Create a recently viewed list that appears at the bottom of all pages that shows the last 3 vieed items

```
module Amazon
    STORE = {
        :electronics => {
            1 => {
                name: "Nintendo DS",
                price: 179
            },
            2 => {
                name: "Sangean Radio",
                price: 200
            }
        },
        :kitchen     => {
            1 => {
                name: "Kitchen Aid Mixer",
                price: 150
            },
            2 => {
                name: "Tupperware",
                price: 19
            }
        },
        :apparrel    => {
            1 => {
                name: "Fleece Underwear",
                price: 29
            },
            2 => {
                name: "Unisex Poncho",
                price: 89
            }
        }
    }
end
```
