/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (7.0.0-SNAPSHOT).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.api;

import org.openapitools.model.ModelApiResponse;
import io.swagger.annotations.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import javax.annotation.Generated;

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen")
@Validated
@Api(value = "versioning", description = "the versioning API")
public interface VersioningApi {

    default Optional<NativeWebRequest> getRequest() {
        return Optional.empty();
    }

    /**
     * POST /versioning/headers
     *
     * @param versionWithDefaultValue  (required)
     * @param versionNoDefaultValue  (required)
     * @param petId ID of pet to update (required)
     * @return successful operation (status code 200)
     */
    @ApiOperation(
        tags = { "versioning" },
        value = "",
        nickname = "versioningHeaders",
        notes = "",
        response = ModelApiResponse.class
    )
    @ApiResponses({
        @ApiResponse(code = 200, message = "successful operation", response = ModelApiResponse.class)
    })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/versioning/headers",
        produces = { "*/*" },
        headers = { "VersionWithDefaultValue=V1", "VersionNoDefaultValue" } 
    )
    default ResponseEntity<ModelApiResponse> versioningHeaders(
        @NotNull @ApiParam(value = "", required = true, defaultValue = "V1") @RequestHeader(value = "VersionWithDefaultValue", required = true, defaultValue = "V1") String versionWithDefaultValue,
        @NotNull @ApiParam(value = "", required = true) @RequestHeader(value = "VersionNoDefaultValue", required = true) String versionNoDefaultValue,
        @ApiParam(value = "ID of pet to update", required = true) @PathVariable("petId") Long petId
    ) {
        getRequest().ifPresent(request -> {
            for (MediaType mediaType: MediaType.parseMediaTypes(request.getHeader("Accept"))) {
                if (mediaType.isCompatibleWith(MediaType.valueOf("*/*"))) {
                    String exampleString = "{ \"code\" : 0, \"type\" : \"type\", \"message\" : \"message\" }";
                    ApiUtil.setExampleResponse(request, "*/*", exampleString);
                    break;
                }
            }
        });
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);

    }


    /**
     * POST /versioning/mix
     *
     * @param versionWithDefaultValueQuery  (required)
     * @param versionNoDefaultValueQuery  (required)
     * @param versionWithDefaultValueHeader  (required)
     * @param versionNoDefaultValueHeader  (required)
     * @param petId ID of pet to update (required)
     * @return successful operation (status code 200)
     */
    @ApiOperation(
        tags = { "versioning" },
        value = "",
        nickname = "versioningMix",
        notes = "",
        response = ModelApiResponse.class
    )
    @ApiResponses({
        @ApiResponse(code = 200, message = "successful operation", response = ModelApiResponse.class)
    })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/versioning/mix",
        produces = { "*/*" },
        headers = { "VersionWithDefaultValueHeader=V1", "VersionNoDefaultValueHeader" } ,
        params = { "VersionWithDefaultValueQuery=V1", "VersionNoDefaultValueQuery" } 
    )
    default ResponseEntity<ModelApiResponse> versioningMix(
        @NotNull @ApiParam(value = "", required = true, defaultValue = "V1") @Valid @RequestParam(value = "VersionWithDefaultValueQuery", required = true, defaultValue = "V1") String versionWithDefaultValueQuery,
        @NotNull @ApiParam(value = "", required = true) @Valid @RequestParam(value = "VersionNoDefaultValueQuery", required = true) String versionNoDefaultValueQuery,
        @NotNull @ApiParam(value = "", required = true, defaultValue = "V1") @RequestHeader(value = "VersionWithDefaultValueHeader", required = true, defaultValue = "V1") String versionWithDefaultValueHeader,
        @NotNull @ApiParam(value = "", required = true) @RequestHeader(value = "VersionNoDefaultValueHeader", required = true) String versionNoDefaultValueHeader,
        @ApiParam(value = "ID of pet to update", required = true) @PathVariable("petId") Long petId
    ) {
        getRequest().ifPresent(request -> {
            for (MediaType mediaType: MediaType.parseMediaTypes(request.getHeader("Accept"))) {
                if (mediaType.isCompatibleWith(MediaType.valueOf("*/*"))) {
                    String exampleString = "{ \"code\" : 0, \"type\" : \"type\", \"message\" : \"message\" }";
                    ApiUtil.setExampleResponse(request, "*/*", exampleString);
                    break;
                }
            }
        });
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);

    }


    /**
     * POST /versioning/query-params
     *
     * @param versionWithDefaultValue  (required)
     * @param versionNoDefaultValue  (required)
     * @param petId ID of pet to update (required)
     * @return successful operation (status code 200)
     */
    @ApiOperation(
        tags = { "versioning" },
        value = "",
        nickname = "versioningQueryParams",
        notes = "",
        response = ModelApiResponse.class
    )
    @ApiResponses({
        @ApiResponse(code = 200, message = "successful operation", response = ModelApiResponse.class)
    })
    @RequestMapping(
        method = RequestMethod.POST,
        value = "/versioning/query-params",
        produces = { "*/*" },
        params = { "VersionWithDefaultValue=V1", "VersionNoDefaultValue" } 
    )
    default ResponseEntity<ModelApiResponse> versioningQueryParams(
        @NotNull @ApiParam(value = "", required = true, defaultValue = "V1") @Valid @RequestParam(value = "VersionWithDefaultValue", required = true, defaultValue = "V1") String versionWithDefaultValue,
        @NotNull @ApiParam(value = "", required = true) @Valid @RequestParam(value = "VersionNoDefaultValue", required = true) String versionNoDefaultValue,
        @ApiParam(value = "ID of pet to update", required = true) @PathVariable("petId") Long petId
    ) {
        getRequest().ifPresent(request -> {
            for (MediaType mediaType: MediaType.parseMediaTypes(request.getHeader("Accept"))) {
                if (mediaType.isCompatibleWith(MediaType.valueOf("*/*"))) {
                    String exampleString = "{ \"code\" : 0, \"type\" : \"type\", \"message\" : \"message\" }";
                    ApiUtil.setExampleResponse(request, "*/*", exampleString);
                    break;
                }
            }
        });
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);

    }

}
