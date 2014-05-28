get "/groups" do
	@groups = Group.all
	erb :"/groups/index"
end

get "/groups/:id" do
	@group = Group.find_by_id(params[:id])
	@members = @group.members
	@creator = @group.creator
	erb :"/groups/show"
end