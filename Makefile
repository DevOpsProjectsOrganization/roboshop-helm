default:
	git pull
	helm install -i frontend . -f env-dev/frontend.yml
	helm upgrade -i cart . -f env-dev/cart.yml 
	helm upgrade -i catalogue . -f env-dev/catalogue.yml
	helm upgrade -i user . -f env-dev/user.yml
	helm upgrade -i shipping . -f env-dev/shipping.yml
	helm upgrade -i payment . -f env-dev/payment.yml
