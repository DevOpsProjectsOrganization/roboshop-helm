default:
	git pull
	aws eks update-kubeconfig --region us-east-1 --name dev
	helm upgrade -i cart . -f env-dev/cart.yml --values ./values.yml
	helm upgrade -i catalogue . -f env-dev/catalogue.yml --values ./values.yml --set schema.enabled=true
	helm upgrade -i user . -f env-dev/user.yml --values ./values.yml
	helm upgrade -i shipping . -f env-dev/shipping.yml --values ./values.yml --set schema.enabled=true
	helm upgrade -i payment . -f env-dev/payment.yml --values ./values.yml
	helm upgrade -i frontend . -f env-dev/frontend.yml --values ./values.yml
uninstall:
	git pull
	helm uninstall cart
	helm uninstall catalogue
	helm uninstall user
	helm uninstall shipping
	helm uninstall payment
	helm uninstall frontend