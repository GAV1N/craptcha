require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CallersController do

  # This should return the minimal set of attributes required to create a valid
  # Caller. As you add validations to Caller, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all callers as @callers" do
      caller = Caller.create! valid_attributes
      get :index
      assigns(:callers).should eq([caller])
    end
  end

  describe "GET show" do
    it "assigns the requested caller as @caller" do
      caller = Caller.create! valid_attributes
      get :show, :id => caller.id.to_s
      assigns(:caller).should eq(caller)
    end
  end

  describe "GET new" do
    it "assigns a new caller as @caller" do
      get :new
      assigns(:caller).should be_a_new(Caller)
    end
  end

  describe "GET edit" do
    it "assigns the requested caller as @caller" do
      caller = Caller.create! valid_attributes
      get :edit, :id => caller.id.to_s
      assigns(:caller).should eq(caller)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Caller" do
        expect {
          post :create, :caller => valid_attributes
        }.to change(Caller, :count).by(1)
      end

      it "assigns a newly created caller as @caller" do
        post :create, :caller => valid_attributes
        assigns(:caller).should be_a(Caller)
        assigns(:caller).should be_persisted
      end

      it "redirects to the created caller" do
        post :create, :caller => valid_attributes
        response.should redirect_to(Caller.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved caller as @caller" do
        # Trigger the behavior that occurs when invalid params are submitted
        Caller.any_instance.stub(:save).and_return(false)
        post :create, :caller => {}
        assigns(:caller).should be_a_new(Caller)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Caller.any_instance.stub(:save).and_return(false)
        post :create, :caller => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested caller" do
        caller = Caller.create! valid_attributes
        # Assuming there are no other callers in the database, this
        # specifies that the Caller created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Caller.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => caller.id, :caller => {'these' => 'params'}
      end

      it "assigns the requested caller as @caller" do
        caller = Caller.create! valid_attributes
        put :update, :id => caller.id, :caller => valid_attributes
        assigns(:caller).should eq(caller)
      end

      it "redirects to the caller" do
        caller = Caller.create! valid_attributes
        put :update, :id => caller.id, :caller => valid_attributes
        response.should redirect_to(caller)
      end
    end

    describe "with invalid params" do
      it "assigns the caller as @caller" do
        caller = Caller.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Caller.any_instance.stub(:save).and_return(false)
        put :update, :id => caller.id.to_s, :caller => {}
        assigns(:caller).should eq(caller)
      end

      it "re-renders the 'edit' template" do
        caller = Caller.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Caller.any_instance.stub(:save).and_return(false)
        put :update, :id => caller.id.to_s, :caller => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested caller" do
      caller = Caller.create! valid_attributes
      expect {
        delete :destroy, :id => caller.id.to_s
      }.to change(Caller, :count).by(-1)
    end

    it "redirects to the callers list" do
      caller = Caller.create! valid_attributes
      delete :destroy, :id => caller.id.to_s
      response.should redirect_to(callers_url)
    end
  end

end