/* tslint:disable */
/* eslint-disable */
/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { exists, mapValues } from '../runtime';
import type { Part } from './Part';
import {
    PartFromJSON,
    PartFromJSONTyped,
    PartToJSON,
} from './Part';

/**
 * Contains all the matching parts
 * @export
 * @interface MatchingParts
 */
export interface MatchingParts {
    /**
     * List of all the connected parts
     * @type {Array<Part>}
     * @memberof MatchingParts
     */
    connected: Array<Part>;
    /**
     * List of all the related parts
     * @type {Array<Part>}
     * @memberof MatchingParts
     */
    related: Array<Part>;
}

/**
 * Check if a given object implements the MatchingParts interface.
 */
export function instanceOfMatchingParts(value: object): boolean {
    let isInstance = true;
    isInstance = isInstance && "connected" in value;
    isInstance = isInstance && "related" in value;

    return isInstance;
}

export function MatchingPartsFromJSON(json: any): MatchingParts {
    return MatchingPartsFromJSONTyped(json, false);
}

export function MatchingPartsFromJSONTyped(json: any, ignoreDiscriminator: boolean): MatchingParts {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'connected': ((json['connected'] as Array<any>).map(PartFromJSON)),
        'related': ((json['related'] as Array<any>).map(PartFromJSON)),
    };
}

export function MatchingPartsToJSON(value?: MatchingParts | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'connected': ((value.connected as Array<any>).map(PartToJSON)),
        'related': ((value.related as Array<any>).map(PartToJSON)),
    };
}

