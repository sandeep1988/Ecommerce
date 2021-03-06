class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.json
skip_before_filter :authorize, :only => [:new, :create]
  
  def index
    @orders = Order.paginate :page=>params[:page], :order=>'created_at desc',:per_page => 5
          respond_to do |format|
            format.html # index.html.erb
              format.xml { render :xml => @orders }
        end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
      @cart = current_cart
        if @cart.line_items.empty?
          redirect_to store_index_url, :notice => "Your cart is empty"
          return
            end
            @order = Order.new
              respond_to do |format|
                format.html # new.html.erb
                  format.xml { render :xml => @order }
  end
    end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])
    @order.add_line_items_from_cart(current_cart)
    @order.total_amount = current_cart.total_price.to_f
      if @order.save
        Notifier.order_received(@order).deliver!
        #AdminMailer.user_added().deliver!
        #@order.total_amount = current_cart.total_price.to_f
        #@order.update_attributes(:total_amount => current_cart.total_price.to_f)
       redirect_to @order.paypal_url(products_url)
       Cart.destroy(session[:cart_id])
       session[:cart_id] = nil
      else
      render :new
        #Notifier.order_received(@order).deliver
         #AdminMailer.user_added().deliver
    end
  end
  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])
    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:order_id])
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end
end
