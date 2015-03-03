# Backbone, The Primer

A common sentiment of developers coming to Backbone is that they don't know where to start with it. Unlike full-featured frameworks with prescribed workflows (ie: Angular or Ember), Backbone is a lightweight library with few opinions. At its worst, some would say that Backbone has TOO few opinions. At its best thought, Backbone is a flexible component library that quickly scaffolds common application design patterns.

The core of Backbone provides a comprehensive RESTful service package. This primer assumes that you have a basic understanding of REST services, and will focus on the interactions of Backbone components with RESTful data services.


## What's In The Box?

The first thing to familiarize with are the basic components provided by Backbone. There are three foundation components that make up Backbone applications:

- ### Backbone.Model
Models store application data, and sync with REST services. A model may predefine its default attributes, and will emit events when any of its managed data attributes change.

- ### Backbone.Collection
Collections manage a list of models, and sync with REST services. A collection provides basic search methods for querying its managed models, and emits events when the composition of its models change.

- ### Backbone.View
A view connects a model to its visual representation in the HTML Document Object Model (or, the "DOM"). Views render their associated model's data into the DOM, and capture user input from the DOM to send back into the model.

- ### Bonus… Underscore!
Backbone has two JavaScript library dependencies: jQuery and Underscore. Chances are good that you're already familiar with jQuery. If you don't know Underscore, then review its [documentation](http://underscorejs.org). Underscore provides common functional programming for data structures. When setting up Backbone, you get the full capabilities of Underscore as part of the package!

While Backbone does include additional useful features, we'll be focusing on these core components in this primer.

## Got REST Services?

For this primer, let's assume that the following RESTful Muppets data service exists:

`GET /muppets/`  
Gets a list of all Muppets within the application. Returns an array of all Muppet models (with some additional meta data):

    {
        "total": 2,
        "page": 1,
        "perPage": 10,
        "muppets": [
          {
            "id": 1,
            "name": "Kermit",
            "occupation": "being green"
          },
          {
            "id": 2,
            "name": "Gonzo",
            "occupation": "plumber"
          }
        ]
    }

`POST /muppets/`  
Creates a new Muppet model based on the posted data. Returns the newly created model:

    {
      "id": 3,
      "name": "Animal",
      "occupation": "drummer"
    }


`GET /muppets/:id`  
`PUT /muppets/:id`  
`DEL /muppets/:id`  
Gets, modifies, and/or deletes a specific muppet model. All actions return the requested/modified model:

    {
      "id": 1,
      "name": "Kermit",
      "occupation": "being green"
    }


## Usings Models

First, let's build a single model that manages data for Kermit. We know that Kermit's REST endpoint is `"/muppets/1"` (ie: `/muppets/:id`, and Kermit's id is "1"). Configured as a Backbone model, Kermit looks like this:

    var KermitModel = Backbone.Model.extend({
      url: '/muppets/1',
      defaults: {
        id: null,
        name: null,
        occupation: null
      }
    });

Kermit's model does two things:

- It defines a RESTful URL for his model to sync with, and…
- It defines default attributes for his model. Default attributes are useful for representing the composition of API data within your front-end code. Also, these defaults guarantee that your model is always fully formed, even before loading its data from ther server.

However, what IS that `KermitModel` object? Whenever you extend a Backbone component, **you always get back a *constructor function***. That means we need to create an instance of the model before using it:

    var kermit = new KermitModel();
    
    kermit.fetch().then(function() {
      kermit.get('name'); // >> "Kermit"
      kermit.get('occupation'); // >> "being green"
      kermit.set('occupation', 'muppet leader');
      kermit.save();
    });

After creating a new instance of our Kermit model, we call `fetch` to have it load data from its REST endpoint. Calling `fetch` returns a promise object, onto which we can chain success and error callbacks. In the above example, we perform some basic actions on our model after loading it. Commonly used Model methods include:

- `fetch`: fetches the model's data from its REST service using a `GET` request.  
- `get`: gets a named attribute from the model.  
- `set`: sets values for named model attributes (without saving to the server).
- `save`: sets attributes, and then saves the model data to the server using a `PUT` request.
- `destroy`: decomissions the model, and removes it from the server using a `DELETE` request.

## Using Collections

Collections handle the loading and management of a list of models. We must first define a Model class for the collection to build instances of, and then attach that model to its managing collection:

    var MuppetModel = Backbone.Model.extend({
        defaults: {
            id: null,
            name: null,
            occupation: null
        }
    });
    
    var MuppetsCollection = Backbone.Collection.extend({
        url: '/muppets'
        model: MuppetModel
    });

In the above example, `MuppetsCollection` will load data from the `"/muppets"` list endpoint. It will then construct the loaded data into a list of `MuppetModel` instances.

To load our collection of Muppet models, we build a collection instance and then call `fetch`:

    var muppets = new MuppetsCollection();
    
    muppets.fetch().then(function() {
        console.log(muppets.length); // >> length: 1
    });

Pretty simple, right? However, there's a problem here: our collection only created a single model. We were *supposed* to get back a list of two items. Let's review again what the `GET /muppets/` service returns…

    {
        "total": 2,
        "page": 1,
        "perPage": 10,
        "muppets": [
          {
            "id": 1,
            "name": "Kermit",
            "occupation": "being green"
          },
          {
            "id": 2,
            "name": "Gonzo",
            "occupation": "plumber"
          }
        ]
    }
    
We can see that this list data does indeed contain two records, however our collection only created one model instance. Why? The reason is beacuse Collections are derived from Arrays, while Models are derived from Objects. In this case, our root data structure is an *Object* (not an Array), so our collection tried to parse the returned data directly into a model.

What we really want is for our collection to populate its list from the `"muppets"` array property of the returned data object. To address this, we simply add a `parse` method onto our collection:

    var MuppetCollection = Backbone.Collection.extend({
        url: '/muppets'
        model: MuppetModel,
        
        parse: function(data) {
            return data.muppets;
        }
    });

A Collection's `parse` method recieves raw data loaded from REST services, and may return a specific portion of that data to be loaded into the collection. In Backbone, both Models and Collections support the definition of a `parse` method. Using `parse` is very useful for reconciling minor differences between your API design and your front-end application architecture (which often times won't map one-to-one, and that's okay!).

With the `parse` method in place, the following now happens upon fetching the collection:

    var muppets = new MuppetCollection();
    
    muppets.fetch().then(function() {
        console.log(muppets.length); // >> length: 2
    });
    
    muppets.get(1); // >> Returns the "Kermit" model, by id reference
    muppets.get(2); // >> Returns the "Gonzo" model, by id reference
    muppets.at(0); // >> Returns the "Kermit" model, by index
    muppets.findWhere({name: 'Gonzo'}); // >> returns the "Gonzo" model
    
Success! The returned list of Muppets were parsed as expected into a collection of `MuppetModel` instances, and the Collection provided some basic methods for querying them. Commonly used Collection methods include:

- `fetch`: fetches the collection's data from its REST service using a `GET` request.
- `create`: adds a new model into the collection, and creates it at the API via `POST`.
- `add`: adds a new model into the collection without telling the API.
- `remove`: removes a model from the collection without telling the API.
- `get`: gets a model from the collection by id reference.
- `at`: gets a model from the collection by index.
- `find`: finds all records matching a specific search criteria.

## Backbone CRUD

Create, Read, Update, and Destroy are the four major data interactions that an application must manage. Backbone Models and Collections work closely together to delegate these roles. Infact, the relationship of Models and Collections (not so coincidentally) mirrors the design of a RESTful API. To review:

    var MuppetModel = Backbone.Model.extend({
        defaults: {
            id: null,
            name: null,
            occupation: null
        }
    });
    
    var MuppetCollection = Backbone.Collection.extend({
        url: '/muppets'
        model: MuppetModel
    });

Notice above that the model class does NOT define a `url` endpoint to sync with. This is because models within a collection will automatically construct their `url` reference as `"[collection.url]/[model.id]"`. This means that after fetching the collection, our Kermit model (with an id of "1") will automatically be configured to sync with a url of `"/muppets/1"`.

### Create

Use `Collection.create` to `POST` new data to a list endpoint. The API should return complete data for the new database record, including its assigned id. The new model is created immediately within the front-end collection.

    muppetsList.create({name: 'Piggy', occupation: 'fashionista'});

### Read

Use `Collection.fetch` or `Model.fetch` to load data via `GET`. For models, you'll generally only need to call `fetch` for models without a parent collection.

    kermit.fetch();
    muppetsList.fetch();

### Update

Use `Model.save` to `PUT` updated data for a model. The model's complete data is sent to the API.

    kermit.save('occupation', 'being awesome');

### Destroy

Use `Model.destroy` to `DELETE` a model instance. The model will remove itself from any parent collection, and issue a `DELETE` request to the API.

    kermit.destroy();

### Patch

Some API designs may also support using the `PATCH` method to perform partial model updates (where only modified data attributes are sent to the API). This design is less common, however can be achieved in Backbone by calling `Model.save` and passing a `{patch: true}` option.

    kermit.save('occupation', 'being awesome', {patch: true});


## Binding Events

Backbone also provides a best-of-class Events framework. The major differentiator of Backbone Events is the support for *context passing*, or, specifing what `this` refers to when an event handler is triggered:

    target.on(event, handler, context)
    target.off(event, handler, context)
    target.trigger(event)

The other key feature of the Backbone Events framework are the inversion-of-control event binders:

    this.listenTo(target, event, handler)
    this.stopListening()

These reverse event binders make life easier by quickly releasing all of an object's bound events, thus aiding memory management. As a general rule, objects with a shorter lifespan should listen to objects with a longer lifespan, and clean up their own event references when deprecated.

### Model & Collection Events

You may bind event handlers onto any model or collection (optionally passing in a handler context):

    kermit.on('change', function() {
        // do stuff...
    }, this);

Commonly tracked Model events include:

- `"change"`: triggered when the value of any model attribute changes.
- `"change:[attribute]"`: triggered when the value of the named *attribute* changes.
- `sync`: called when the model completes a data exchange with the API.

Commonly tracked Collection events include:

- `"add"`: triggered when a model is added to the collection.
- `"remove"`: triggered when a model is removed from the collection.
- `"reset"`: triggered when the collection is purged with a hard reset.
- `"sync"`: triggered when the collection completes a data exchange with the API.
- `[model event]`: all child model events are proxied by their parent collection.

Review Backbone's [catalog of built-in events](http://backbonejs.org/#Events-catalog) for all available event triggers.
