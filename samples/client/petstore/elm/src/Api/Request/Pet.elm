{-
   OpenAPI Petstore
   This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.

   The version of the OpenAPI document: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Request.Pet exposing
    ( addPet
    , deletePet
    , findPetsByStatus, Status(..), statusVariants
    , findPetsByTags
    , getPetById
    , updatePet
    , updatePetWithForm
    , uploadFile
    )

import Api
import Api.Data exposing (..)
import Dict
import Http
import Json.Decode
import Json.Encode
import File exposing (File)


type Status
    = StatusAvailable
    | StatusPending
    | StatusSold


statusVariants : List Status
statusVariants =
    [ StatusAvailable
    , StatusPending
    , StatusSold
    ]


stringFromStatus : Status -> String
stringFromStatus model =
    case model of
        StatusAvailable ->
            "available"

        StatusPending ->
            "pending"

        StatusSold ->
            "sold"



addPet : Api.Data.Pet -> Api.Request Api.Data.Pet
addPet pet_body =
    Api.request
        "POST"
        "/pet"
        []
        []
        []
        (Maybe.map Http.jsonBody (Just (Api.Data.encodePet pet_body)))
        Api.Data.petDecoder


deletePet : Int -> Maybe String -> Api.Request ()
deletePet petId_path apiKey_header =
    Api.request
        "DELETE"
        "/pet/{petId}"
        [ ( "petId", String.fromInt petId_path ) ]
        []
        [ ( "api_key", Maybe.map identity apiKey_header ) ]
        Nothing
        (Json.Decode.succeed ())


{-| Multiple status values can be provided with comma separated strings
-}
findPetsByStatus : List Status -> Api.Request (List Api.Data.Pet)
findPetsByStatus status_query =
    Api.request
        "GET"
        "/pet/findByStatus"
        []
        [ ( "status", Just <| (String.join "," << List.map stringFromStatus) status_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.petDecoder)


{-| Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
-}
findPetsByTags : List String -> Api.Request (List Api.Data.Pet)
findPetsByTags tags_query =
    Api.request
        "GET"
        "/pet/findByTags"
        []
        [ ( "tags", Just <| (String.join "," << List.map identity) tags_query ) ]
        []
        Nothing
        (Json.Decode.list Api.Data.petDecoder)


{-| Returns a single pet
-}
getPetById : Int -> Api.Request Api.Data.Pet
getPetById petId_path =
    Api.request
        "GET"
        "/pet/{petId}"
        [ ( "petId", String.fromInt petId_path ) ]
        []
        []
        Nothing
        Api.Data.petDecoder


updatePet : Api.Data.Pet -> Api.Request Api.Data.Pet
updatePet pet_body =
    Api.request
        "PUT"
        "/pet"
        []
        []
        []
        (Maybe.map Http.jsonBody (Just (Api.Data.encodePet pet_body)))
        Api.Data.petDecoder


updatePetWithForm : Int -> Maybe String -> Maybe String -> Api.Request ()
updatePetWithForm petId_path name status =
    Api.request
        "POST"
        "/pet/{petId}"
        [ ( "petId", String.fromInt petId_path ) ]
        []
        []
        (Just <| Http.multipartBody <| List.filterMap identity [ Maybe.map (Http.stringPart "name") name, Maybe.map (Http.stringPart "status") status ])
        (Json.Decode.succeed ())


uploadFile : Int -> Maybe String -> Maybe File -> Api.Request Api.Data.ApiResponse
uploadFile petId_path additionalMetadata file =
    Api.request
        "POST"
        "/pet/{petId}/uploadImage"
        [ ( "petId", String.fromInt petId_path ) ]
        []
        []
        (Just <| Http.multipartBody <| List.filterMap identity [ Maybe.map (Http.stringPart "additionalMetadata") additionalMetadata, Maybe.map (Http.filePart "file") file ])
        Api.Data.apiResponseDecoder

