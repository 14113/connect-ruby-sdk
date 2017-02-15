=begin
Square Connect API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for SquareConnect::CustomerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomerApi' do
  before do
    # run before each test
    @instance = SquareConnect::CustomerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerApi' do
    it 'should create an instact of CustomerApi' do
      @instance.should be_a(SquareConnect::CustomerApi)
    end
  end

  # unit tests for create_customer
  # CreateCustomer
  # Creates a new customer for a business, which can have associated cards on file.  You must provide __at least one__ of the following values in your request to this endpoint:  - &#x60;given_name&#x60; - &#x60;family_name&#x60; - &#x60;company_name&#x60; - &#x60;email_address&#x60; - &#x60;phone_number&#x60;  This endpoint does not accept an idempotency key. If you accidentally create a duplicate customer, you can delete it with the [DeleteCustomer](#endpoint-deletecustomer) endpoint.
  # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [CreateCustomerResponse]
  describe 'create_customer test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for delete_customer
  # DeleteCustomer
  # Deletes a customer from a business, along with any linked cards on file.
  # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
  # @param customer_id The ID of the customer to delete.
  # @param [Hash] opts the optional parameters
  # @return [DeleteCustomerResponse]
  describe 'delete_customer test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for list_customers
  # ListCustomers
  # Lists a business&#39;s customers.
  # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for your original query.  See [Paginating results](#paginatingresults) for more information.
  # @return [ListCustomersResponse]
  describe 'list_customers test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for retrieve_customer
  # RetrieveCustomer
  # Returns details for a single customer.
  # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
  # @param customer_id The ID of the customer to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [RetrieveCustomerResponse]
  describe 'retrieve_customer test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for update_customer
  # UpdateCustomer
  # Updates the details of an existing customer.  You cannot edit a customer&#39;s cards on file with this endpoint. To make changes to a card on file, you must delete the existing card on file with the [DeleteCustomerCard](#endpoint-deletecustomercard) endpoint, then create a new one with the [CreateCustomerCard](#endpoint-createcustomercard) endpoint.
  # @param authorization The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;.
  # @param customer_id The ID of the customer to update.
  # @param body An object containing the fields to POST for the request.  See the corresponding object definition for field details.
  # @param [Hash] opts the optional parameters
  # @return [UpdateCustomerResponse]
  describe 'update_customer test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end