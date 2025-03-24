<?php

/**
 * OpenAPI Petstore
 * PHP version 8.1
 *
 * @package OpenAPIServer
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */

/**
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 * The version of the OpenAPI document: 1.0.0
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 * Extend this class with your controller. You can inject dependencies via class constructor,
 * @see https://github.com/PHP-DI/Slim-Bridge basic example.
 */
namespace OpenAPIServer\Api;

use Psr\Http\Message\ServerRequestInterface;
use Psr\Http\Message\ResponseInterface;
use Slim\Exception\HttpNotImplementedException;

/**
 * AbstractPetApi Class Doc Comment
 *
 * @package OpenAPIServer\Api
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */
abstract class AbstractPetApi
{
    /**
     * POST addPet
     * Summary: Add a new pet to the store
     * Notes: 
     * Output-Formats: [application/xml, application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function addPet(
        ServerRequestInterface $request,
        ResponseInterface $response
    ): ResponseInterface {
        $body = $request->getParsedBody();
        $message = "How about implementing addPet as a POST method in OpenAPIServer\Api\PetApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * DELETE deletePet
     * Summary: Deletes a pet
     * Notes: 
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param int $petId Pet id to delete
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function deletePet(
        ServerRequestInterface $request,
        ResponseInterface $response,
        int $petId
    ): ResponseInterface {
        $headers = $request->getHeaders();
        $apiKey = $request->hasHeader('api_key') ? $headers['api_key'] : null;
        $message = "How about implementing deletePet as a DELETE method in OpenAPIServer\Api\PetApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET findPetsByStatus
     * Summary: Finds Pets by status
     * Notes: Multiple status values can be provided with comma separated strings
     * Output-Formats: [application/xml, application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function findPetsByStatus(
        ServerRequestInterface $request,
        ResponseInterface $response
    ): ResponseInterface {
        $queryParams = $request->getQueryParams();
        $status = (key_exists('status', $queryParams)) ? $queryParams['status'] : null;
        $message = "How about implementing findPetsByStatus as a GET method in OpenAPIServer\Api\PetApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET findPetsByTags
     * Summary: Finds Pets by tags
     * Notes: Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
     * Output-Formats: [application/xml, application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     * @deprecated
     */
    public function findPetsByTags(
        ServerRequestInterface $request,
        ResponseInterface $response
    ): ResponseInterface {
        $queryParams = $request->getQueryParams();
        $tags = (key_exists('tags', $queryParams)) ? $queryParams['tags'] : null;
        $message = "How about implementing findPetsByTags as a GET method in OpenAPIServer\Api\PetApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPetById
     * Summary: Find pet by ID
     * Notes: Returns a single pet
     * Output-Formats: [application/xml, application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param int $petId ID of pet to return
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPetById(
        ServerRequestInterface $request,
        ResponseInterface $response,
        int $petId
    ): ResponseInterface {
        $message = "How about implementing getPetById as a GET method in OpenAPIServer\Api\PetApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * PUT updatePet
     * Summary: Update an existing pet
     * Notes: 
     * Output-Formats: [application/xml, application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function updatePet(
        ServerRequestInterface $request,
        ResponseInterface $response
    ): ResponseInterface {
        $body = $request->getParsedBody();
        $message = "How about implementing updatePet as a PUT method in OpenAPIServer\Api\PetApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST updatePetWithForm
     * Summary: Updates a pet in the store with form data
     * Notes: 
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param int $petId ID of pet that needs to be updated
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function updatePetWithForm(
        ServerRequestInterface $request,
        ResponseInterface $response,
        int $petId
    ): ResponseInterface {
        $body = $request->getParsedBody();
        $name = (isset($body['name'])) ? $body['name'] : null;
        $status = (isset($body['status'])) ? $body['status'] : null;
        $message = "How about implementing updatePetWithForm as a POST method in OpenAPIServer\Api\PetApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST uploadFile
     * Summary: uploads an image
     * Notes: 
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param int $petId ID of pet to update
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function uploadFile(
        ServerRequestInterface $request,
        ResponseInterface $response,
        int $petId
    ): ResponseInterface {
        $body = $request->getParsedBody();
        $additionalMetadata = (isset($body['additionalMetadata'])) ? $body['additionalMetadata'] : null;
        $file = (key_exists('file', $request->getUploadedFiles())) ? $request->getUploadedFiles()['file'] : null;
        $message = "How about implementing uploadFile as a POST method in OpenAPIServer\Api\PetApi class?";
        throw new HttpNotImplementedException($request, $message);
    }
}
