/* tslint:disable */
/* eslint-disable */
/**
 * Example
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



/**
 * 
 * @export
 * @interface AbstractFlatStockPickOrderBaseDto
 */
export interface AbstractFlatStockPickOrderBaseDto {
    /**
     * 
     * @type {number}
     * @memberof AbstractFlatStockPickOrderBaseDto
     */
    'id': number;
    /**
     * 
     * @type {string}
     * @memberof AbstractFlatStockPickOrderBaseDto
     */
    'created'?: string;
    /**
     * 
     * @type {string}
     * @memberof AbstractFlatStockPickOrderBaseDto
     */
    'lastModified'?: string;
    /**
     * 
     * @type {number}
     * @memberof AbstractFlatStockPickOrderBaseDto
     */
    'warehouseId': number;
    /**
     * 
     * @type {number}
     * @memberof AbstractFlatStockPickOrderBaseDto
     */
    'quantity': number;
    /**
     * 
     * @type {string}
     * @memberof AbstractFlatStockPickOrderBaseDto
     */
    'stockLocation'?: string;
    /**
     * 
     * @type {string}
     * @memberof AbstractFlatStockPickOrderBaseDto
     */
    'barcode'?: string;
    /**
     * 
     * @type {number}
     * @memberof AbstractFlatStockPickOrderBaseDto
     */
    'pickedQuantity': number;
    /**
     * 
     * @type {string}
     * @memberof AbstractFlatStockPickOrderBaseDto
     */
    'type': string;
}

