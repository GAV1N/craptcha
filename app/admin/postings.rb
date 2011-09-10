ActiveAdmin.register Posting do
  index do
    column "Title", :sortable => :title do |posting| 
      posting.title
    end         
    
    column "Craiglist URL", :sortable => :craigslist_url do |posting|
      link_to posting.craigslist_url, posting.craigslist_url, :target => "new"
    end        
    
    default_actions  
  end      
  
  filter :title
  filter :description
  filter :craigslist_url
  filter :created_at
  
  show do
    h3 posting.title
    div do
      posting.description
    end
  end   
  
  sidebar :help do
    "Need help? Email us at craptcha@blah.com."
  end  
  
  form do |f|
    f.inputs "New Posting" do
      f.input :title
      f.input :description
      f.input :craigslist_url, :label => "Craigslist URL"
    end
    f.buttons
  end                  
  
  collection_action :create, :method => :post do
    @posting = Posting.new(params[:posting])  
    @posting.user = current_user    
    respond_to do |format|
      if @posting.save
        format.html { redirect_to @posting, notice: 'Posting was successfully created.' }
        format.json { render json: @posting, status: :created, location: @posting }
      else
        format.html { render action: "new" }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end   
  
  collection_action :update, :method => :post do
    @posting = Posting.find(params[:id])     
    @posting.user = current_user

    respond_to do |format|
      if @posting.update_attributes(params[:posting])
        format.html { redirect_to @posting, notice: 'Posting was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end
  

  
end
