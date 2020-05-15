# Include ruby code using <% %> . When you want to print the output of the ruby code, use <%= %>.


#Iterating through a collection (example)
# <% @products.each do |product| %>
#     <p><%= product.name %></p>
#     <p><%= product.description %></p>
# <% end %>

#Showing model validation errors in the views (example)
# <% if @product.errors.any? %>
#     <div id="error_explanation">
#         <h2><%= pluralize(@product.errors.count, "error")%>prohibited this post from being saved:</h2>
#         <ul>
#             <% @product.errors.full_messages.each do |msg| %>
#             <li><%= msg %></li>
#         <% end %>
#         </ul>
#     </div>
# <% end %>

# Form submission
# We did a small demonstration earlier on how we can submit a form and have a method in the controller process the form's information. Let's look into this a little bit further and see if we can make form submission more concise.

# Earlier, we showed how you can handle a new product creation by doing something like below:

# def create
#     @product = Product.create( name: params[:name], description: params[:description])
#     #this redirect only applies for when the product was successfully created! You'll have to modify this  code with an if statement to RENDER the new view IF there are errors ELSE REDIRECT to the products view if there weren't errors.
#     redirect_to '/products'
# end

#There is another way this can be done. Imagine that my form in the view file looks like this:

<form action='/products/' method='post'>
  <input type='text' name='product[name]' placeholder='name' />
  <input type='text' name='product[description]' placeholder='description' />
  <input type='submit' value='Create' />
</form>

#When this form is submitted, our routes.rb (if configured properly) will have the products controller's create method handle this request. Now, notice that instead of having the input names be a name or description, we specified product[name] and product[description]. Since the information is passed as an array/hash, we can have access to the POST data by simply calling params[:product]. In other words params[:product] is already a hash which we can simply pass to the create method! For example, we can modify our create method to simply be:

def create
    @product = Product.create( params[:product] )
    #this redirect only applies for when the product was successfully created! You'll have to modify this  code with an if statement to RENDER the new view IF there are errors ELSE REDIRECT to the products view if there weren't errors.
    redirect_to '/products'
end

#This is a much more elegant solution, especially if the product had for example 20-30 columns/fields! Now, the problem with this approach is when the product has the following fields/columns:

# 1.name - product name
# 2.description - product description
# 3.secret_code - the secret code that only you or other admins can use to get 100% discount on the product.
# In other words, you don't want the user to access or update the secret_code column. This can be a problem since if your user maliciously used a tool like Inspect Element to submit a form with <input type='text' name='secret_code' />, your code would indeed create a product with that secret_code!

# To prevent users from hacking this vulnerability, there is a trick you can use to make your site more secure, and to prevent users from accessing/updating columns you don't want users to access. This is done in Rails 4 by creating a private method like product_params that filters the POST/param data and only allows certain fields to be passed through.

# For example:

def create
    @product = Product.create( product_params )
    redirect_to '/products'
end

private 
def product_params
    params.require(:product).permit(:name, :description)
end

#Now, you may be thinking this is overkill. You may be right. This used to be done differently in Rails 3 but in Rails 4, this is the standard way that Rails developers decided to filter the POST data and it would be wise for you to be familiar with this approach as well.  Note that if I had another page where the user could edit the product information and submit new POST data with the updated product information, we could also use the update method to handle this by simply passing what's returned from product_params to the Product.update method.

def create
    @product = Product.create( product_params )
    redirect_to '/products'
end

def update
    @product = Product.update( product_params )
    redirect_to '/products'
end

private 
def product_params
    params.require(:product).permit(:name, :description)
end
#---------------------------------------------------------------------------------------------------------------
#HELPERS

#Creating a resourceful route will also expose a number of helpers to the controllers and views in your application. In the case of resources :photos:

# - photos_path returns /photos
# - new_photo_path returns /photos/new
# - edit_photo_path(:id) returns /photos/:id/edit
#     -for instance,edit_photo_path(10) returns /photos/10/edit
# - photo_path(:id) returns /photos/:id
#     -for instance, photo_path(10) returns /photos/10

# You can see which helpers are available through your routes by typing in the terminal.
# with: rake routes

This allows you to do something like below:

def create
    ..
    redirect_to photos_path
end

def update
    ..
    redirect_to edit_photo_path(params[:id])
end

# This will show you all the helpers available (just append _path to the name you see on the left).

# Although some of these helpers are there to help you, we think it actually makes it harder and discourage you from using them. The reason we bring it up now is because you will probably see these helpers (anything that ends with _path) appear when you see other tutorials and we want you to be at least familiar with these terms and know what they are. We believe it's easier and better if you don't use any of these helpers so please have that in mind as you follow our tutorials and do the assignments.

# For full documentation read: http://guides.rubyonrails.org/routing.html

# Creating Custom Helpers
# It's also possible to create custom helpers and make these available to your controller and views.  Later in one of the assignments, you will have the opportunity to get exposed to these as well.