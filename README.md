# Cripto API

This API is made to rertrieve criptocurrencies information. 

This will be used on a development challenge. 


## Installing 

TO run the API you'll need to have installed ruby V 2.6.3 on your machine. 

To start the api on a development server do as it follows:

1. Clone the git respository:
```git clone https://github.com/pedrocecchetti/criptoapi.git```

2. Go to the directory:
```cd criptoapi```

3. Run bundle:
```bundle install ```

4. Run migrations:
```rails db:migrate```
(This will generate a Development Sqlite3 DB)

5. Start the API server with:
```rails s```


## API USAGE

The API has 2 main routes: 

### 1. The first route is a Route to retrieve the Data from the application DB.
- To use you should send a GET request to `localhost:3000/api/v1/criptoinfo`
- The response will be in this format:
```
{
    "status": "200",
    "message": "Successful request",
    "data": [
        {
            "id": 1,
            "name": "Bitcoin",
            "symbol": "BTC",
            "last_updated": "2019-05-20T19:34:40.000Z",
            "price": 7818.40729118,
            "api_id": 1,
            "created_at": "2019-06-15T13:35:47.345Z",
            "updated_at": "2019-06-15T13:57:41.444Z"
        },
    ...
```

### 2. The sercond route is a Route to update the Data in the DB.
- To use you should send a GET request to `localhost:3000/api/v1/updatedatabase`
- The get request to this route will update the records on the database.