=begin
wallee API: 2.0.0

The wallee API allows an easy interaction with the wallee web service.



Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module Wallee
  class TransactionCommentService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Find by transaction
    # Returns all comments of the transaction.
    # @param space_id 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<TransactionComment>]
    def transaction_comment_service_all(space_id, transaction_id, opts = {})
      data, _status_code, _headers = transaction_comment_service_all_with_http_info(space_id, transaction_id, opts)
      return data
    end

    # Find by transaction
    # Returns all comments of the transaction.
    # @param space_id 
    # @param transaction_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TransactionComment>, Fixnum, Hash)>] Array<TransactionComment> data, response status code and response headers
    def transaction_comment_service_all_with_http_info(space_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCommentService.transaction_comment_service_all ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCommentService.transaction_comment_service_all" if space_id.nil?
      # verify the required parameter 'transaction_id' is set
      fail ArgumentError, "Missing the required parameter 'transaction_id' when calling TransactionCommentService.transaction_comment_service_all" if transaction_id.nil?
      # resource path
      local_var_path = "/transaction-comment/all".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'transactionId'] = transaction_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TransactionComment>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCommentService#transaction_comment_service_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create
    # Creates the comment with the given properties.
    # @param space_id 
    # @param entity 
    # @param [Hash] opts the optional parameters
    # @return [TransactionComment]
    def transaction_comment_service_create(space_id, entity, opts = {})
      data, _status_code, _headers = transaction_comment_service_create_with_http_info(space_id, entity, opts)
      return data
    end

    # Create
    # Creates the comment with the given properties.
    # @param space_id 
    # @param entity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionComment, Fixnum, Hash)>] TransactionComment data, response status code and response headers
    def transaction_comment_service_create_with_http_info(space_id, entity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCommentService.transaction_comment_service_create ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCommentService.transaction_comment_service_create" if space_id.nil?
      # verify the required parameter 'entity' is set
      fail ArgumentError, "Missing the required parameter 'entity' when calling TransactionCommentService.transaction_comment_service_create" if entity.nil?
      # resource path
      local_var_path = "/transaction-comment/create".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(entity)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionComment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCommentService#transaction_comment_service_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete
    # Deletes the comment with the given id.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def transaction_comment_service_delete(space_id, id, opts = {})
      transaction_comment_service_delete_with_http_info(space_id, id, opts)
      return nil
    end

    # Delete
    # Deletes the comment with the given id.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def transaction_comment_service_delete_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCommentService.transaction_comment_service_delete ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCommentService.transaction_comment_service_delete" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionCommentService.transaction_comment_service_delete" if id.nil?
      # resource path
      local_var_path = "/transaction-comment/delete".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCommentService#transaction_comment_service_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Pin
    # Pins the comment to the top.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def transaction_comment_service_pin(space_id, id, opts = {})
      transaction_comment_service_pin_with_http_info(space_id, id, opts)
      return nil
    end

    # Pin
    # Pins the comment to the top.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def transaction_comment_service_pin_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCommentService.transaction_comment_service_pin ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCommentService.transaction_comment_service_pin" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionCommentService.transaction_comment_service_pin" if id.nil?
      # resource path
      local_var_path = "/transaction-comment/pin".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['*/*']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCommentService#transaction_comment_service_pin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the comment with the given 'id' and returns it.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [TransactionComment]
    def transaction_comment_service_read(space_id, id, opts = {})
      data, _status_code, _headers = transaction_comment_service_read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the comment with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionComment, Fixnum, Hash)>] TransactionComment data, response status code and response headers
    def transaction_comment_service_read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCommentService.transaction_comment_service_read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCommentService.transaction_comment_service_read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionCommentService.transaction_comment_service_read" if id.nil?
      # resource path
      local_var_path = "/transaction-comment/read".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['*/*']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionComment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCommentService#transaction_comment_service_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unpin
    # Unpins the comment from the top.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def transaction_comment_service_unpin(space_id, id, opts = {})
      transaction_comment_service_unpin_with_http_info(space_id, id, opts)
      return nil
    end

    # Unpin
    # Unpins the comment from the top.
    # @param space_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def transaction_comment_service_unpin_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCommentService.transaction_comment_service_unpin ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCommentService.transaction_comment_service_unpin" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling TransactionCommentService.transaction_comment_service_unpin" if id.nil?
      # resource path
      local_var_path = "/transaction-comment/unpin".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['*/*']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCommentService#transaction_comment_service_unpin\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update
    # This updates the comment with the given properties. Only those properties which should be updated can be provided. The 'id' and 'version' are required to identify the comment.
    # @param space_id 
    # @param entity 
    # @param [Hash] opts the optional parameters
    # @return [TransactionComment]
    def transaction_comment_service_update(space_id, entity, opts = {})
      data, _status_code, _headers = transaction_comment_service_update_with_http_info(space_id, entity, opts)
      return data
    end

    # Update
    # This updates the comment with the given properties. Only those properties which should be updated can be provided. The &#39;id&#39; and &#39;version&#39; are required to identify the comment.
    # @param space_id 
    # @param entity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TransactionComment, Fixnum, Hash)>] TransactionComment data, response status code and response headers
    def transaction_comment_service_update_with_http_info(space_id, entity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransactionCommentService.transaction_comment_service_update ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling TransactionCommentService.transaction_comment_service_update" if space_id.nil?
      # verify the required parameter 'entity' is set
      fail ArgumentError, "Missing the required parameter 'entity' when calling TransactionCommentService.transaction_comment_service_update" if entity.nil?
      # resource path
      local_var_path = "/transaction-comment/update".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(entity)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionComment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionCommentService#transaction_comment_service_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end