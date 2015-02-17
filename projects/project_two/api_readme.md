# Project API

## A Fake RESTful API for General Assemb.ly

The Project API is currently hosted on a Digital Ocean server.

[**Here is the link to the API.**](http://104.131.73.180)

This API exposes two sets of endpoints:

- Sample data that is very easy to play with at `/api/v1`
- The full set of data at `/api/v2`

For the Version 1 API you can just read about the endpoints and how to 
structure API requests below. That's all you need!

For the Version 2 API, you will need to request an API key (not available yet).

The Version 2 API offers the ability to:

- read data about: 
  + `locations` ("markets"),
  + `rooms` (available spaces for courses in each location),
  + the `courses` that are offered, and
  + `employees`
- create, read, update or delete data about:
  + `cohorts` (ie, "classes"), or specific instances of courses,
  + `leads` (not yet assigned to cohorts) and `students` (assigned to one or 
    more cohorts, even those that are in the past)
- add or remove students or leads to/from cohorts
- assign or unassign employees to cohorts

## Working with the Version 1 API

### Leads

Endpoint `api/v1/leads` returns a JSON payload.

Sample Payload

```js
{
  leads: [
    {
      data: {
        first: "Avery",
        last: "Staples",
        sex: "F",
        born_on: "1990-01-10"
      },
      contact: {
        email: "avery.staples@mailgoddess.net",
        phone: "555-212-9190"
      },
      created_at: "2015-02-12"
    }
  ]
}
```

### Cohorts (used instead of Classes to avoid naming issues)

Endpoint `api/v1/cohorts` returns a JSON payload.

Sample Payload

```js
{
  cohorts: [
    {
      id: 1,
      number: "NYC-WDI-001",
      name: "NYC-WDI-001",
      schedule: "MF-0900",
      format: "I-12",
      course: "WDI",
      room_id: 1,
      producer_id: 1,
      instructor_ids: [2, 3, 4],
      dates: {
        starts_on: '2013-10-11',
        ends_on: '2014-01-09'
      }
    }
  ]
}
```

### Classes

Endpoint `api/v1/cohorts/:id/students` returns a JSON payload

Sample Payload

```js
{
  students: [
    {
      data: {
        first: "Avery",
        last: "Staples",
        sex: "F",
        born_on: "1990-01-10"
      },
      contact: {
        email: "avery.staples@mailgoddess.net",
        phone: "555-212-9190"
      },
      created_at: "2015-02-12"
    }
  ]
}
```
