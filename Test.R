#Test using Azure Container Instance
response <- httr::POST("http://rmodel.australiaeast.azurecontainer.io:8000/score",
                       body=list(df=MASS::Boston[1:10,]), encode="json")

httr::content(response, flatten=TRUE)

#Test using Azure Kubernetes Service
