require 'rails_helper'

RSpec.describe SubscriptionController, type: :controller do
  describe "create subscription" do
    let(:user) { create(:user) } 

    context "when user is not a pro" do
      before do
        allow(controller).to receive(:current_user).and_return(user)
        allow(user).to receive(:is_pro).and_return(false)
      end

      it "creates a Stripe session and redirects to the session URL" do
        price_id = "price_1PF2lnG8qLGvGfXbVTo1laxO"
        customer_id = "cus_123456789"
        session_url = "http://example.com/stripe_session"
        stripe_session_double = double("Stripe::Checkout::Session", url: session_url)
        allow(user).to receive(:customer_id).and_return(customer_id)
        
        expect(Stripe::Checkout::Session).to receive(:create).with({
          customer: customer_id,
          payment_method_types: ['card'],
          mode: 'subscription',
          line_items: [{
            price: price_id,
            quantity: 1,
          }],
          success_url: "#{course_dashboard_url}/",
        }).and_return(stripe_session_double)
      
        post :create
        expect(response).to redirect_to(session_url)
      end

      it "handles Stripe errors gracefully" do
        allow(Stripe::Checkout::Session).to receive(:create).and_raise(Stripe::StripeError)

        post :create
        expect(response).to redirect_to(root_path)
        expect(flash[:alert]).to eq('An error occurred while processing your request.')
      end
    end

    context "when user is a pro" do
      before do
        allow(controller).to receive(:current_user).and_return(user)
        allow(user).to receive(:is_pro).and_return(true)
      end

      it "redirects to edit user registration url with notice" do
        post :create
        expect(response).to redirect_to(edit_user_registration_url)
        expect(flash[:notice]).to eq('User has already subscribed.')
      end
    end
  end

  # describe "cancel subscription" do

  #   it "cancels subscriptions and redirects if current_user is present" do
  #     user = create(:user)
  #     allow(controller).to receive(:current_user).and_return(user)
      
  #     allow(Stripe::Subscription).to receive(:list).and_return([{ 'id' => 'sub_123' }])
  #     expect(user).to receive(:update).with(is_pro: false, customer_id: nil)
  #     expect(Stripe::Subscription).to receive(:retrieve).with('sub_123').and_return(double(cancel: true))
      
  #     post :cancel
  #     expect(response).to redirect_to(edit_user_registration_url)
  #     expect(flash[:notice]).to eq('User has already subscribed.')
  #   end
    
  #   it "does not cancel subscriptions if current_user is not present" do
  #     allow(controller).to receive(:current_user).and_return(nil)
            
  #     post :cancel
  #     expect(response).to redirect_to(root_path)
  #     expect(flash[:alert]).to eq('You need to sign in or sign up before continuing.')
  #   end
  # end

  describe "cancel subscriptiom" do
    let(:user) { create(:user) }
  
    context "when current_user is present" do
      before do
        allow(controller).to receive(:current_user).and_return(user)
      end
  
      it "cancels subscriptions and redirects with notice if user has active subscriptions" do
        allow(Stripe::Subscription).to receive(:list).and_return([{ 'id' => 'sub_123' }])
  
        expect(user).to receive(:update).with(is_pro: false, customer_id: nil)
        expect(Stripe::Subscription).to receive(:retrieve).with('sub_123').and_return(double(cancel: true))
  
        post :cancel
        expect(response).to redirect_to(edit_user_registration_url)
        expect(flash[:notice]).to eq('Your subscription has been canceled.')
      end
  
      it "redirects with notice if user does not have any active subscriptions" do
        allow(Stripe::Subscription).to receive(:list).and_return([])
        expect(user).not_to receive(:update)
  
        post :cancel
        expect(response).to redirect_to(edit_user_registration_url)
        expect(flash[:notice]).to eq('You do not have an active subscription.')
      end
    end
  
    context "when current_user is not present" do
      before do
        allow(controller).to receive(:current_user).and_return(nil)
      end
  
      it "redirects with alert" do
        post :cancel
        expect(response).to redirect_to(root_url)
        expect(flash[:alert]).to eq('You need to sign in or sign up before continuing.')
      end
    end
  end  
end