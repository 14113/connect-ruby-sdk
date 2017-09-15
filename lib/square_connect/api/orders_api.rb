=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SquareConnect
  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # BatchRetrieveOrders
    # Retrieves a set of [Order](#type-order)s by their IDs. Only orders that have been successfully charged are included in the response.  If any of the order IDs in the request do not exist, or are associated with uncharged orders, then those orders will not be included in the set of orders in the response.  Note that in the future, uncharged orders may be returned by this endpoint.
    # @param location_id The ID of the orders&#39; associated location.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [BatchRetrieveOrdersResponse]
    def batch_retrieve_orders(location_id, body, opts = {})
      data, _status_code, _headers = batch_retrieve_orders_with_http_info(location_id, body, opts)
      return data
    end

    # BatchRetrieveOrders
    # Retrieves a set of [Order](#type-order)s by their IDs. Only orders that have been successfully charged are included in the response.  If any of the order IDs in the request do not exist, or are associated with uncharged orders, then those orders will not be included in the set of orders in the response.  Note that in the future, uncharged orders may be returned by this endpoint.
    # @param location_id The ID of the orders&#39; associated location.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BatchRetrieveOrdersResponse, Fixnum, Hash)>] BatchRetrieveOrdersResponse data, response status code and response headers
    def batch_retrieve_orders_with_http_info(location_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.batch_retrieve_orders ..."
      end
      # verify the required parameter 'location_id' is set
      fail ArgumentError, "Missing the required parameter 'location_id' when calling OrdersApi.batch_retrieve_orders" if location_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling OrdersApi.batch_retrieve_orders" if body.nil?
      # resource path
      local_var_path = "/v2/locations/{location_id}/orders/batch-retrieve".sub('{format}','json').sub('{' + 'location_id' + '}', location_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BatchRetrieveOrdersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#batch_retrieve_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # CreateOrder
    # Creates an [Order](#type-order) that can then be referenced as `order_id` in a request to the [Charge](#endpoint-charge) endpoint. Orders specify products for purchase, along with discounts, taxes, and other settings to apply to the purchase.  To associate a created order with a request to the Charge endpoint, provide the order's `id` in the `order_id` field of your request.  You cannot modify an order after you create it. If you need to modify an order, instead create a new order with modified details.  To learn more about the Orders API, see the [Orders API Overview](https://docs.connect.squareup.com/articles/orders-api-overview).
    # @param location_id The ID of the business location to associate the order with.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [CreateOrderResponse]
    def create_order(location_id, body, opts = {})
      data, _status_code, _headers = create_order_with_http_info(location_id, body, opts)
      return data
    end

    # CreateOrder
    # Creates an [Order](#type-order) that can then be referenced as &#x60;order_id&#x60; in a request to the [Charge](#endpoint-charge) endpoint. Orders specify products for purchase, along with discounts, taxes, and other settings to apply to the purchase.  To associate a created order with a request to the Charge endpoint, provide the order&#39;s &#x60;id&#x60; in the &#x60;order_id&#x60; field of your request.  You cannot modify an order after you create it. If you need to modify an order, instead create a new order with modified details.  To learn more about the Orders API, see the [Orders API Overview](https://docs.connect.squareup.com/articles/orders-api-overview).
    # @param location_id The ID of the business location to associate the order with.
    # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateOrderResponse, Fixnum, Hash)>] CreateOrderResponse data, response status code and response headers
    def create_order_with_http_info(location_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi.create_order ..."
      end
      # verify the required parameter 'location_id' is set
      fail ArgumentError, "Missing the required parameter 'location_id' when calling OrdersApi.create_order" if location_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling OrdersApi.create_order" if body.nil?
      # resource path
      local_var_path = "/v2/locations/{location_id}/orders".sub('{format}','json').sub('{' + 'location_id' + '}', location_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateOrderResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#create_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
