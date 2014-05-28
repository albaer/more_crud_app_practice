users = [{username: "casey", password: "hi"},
{username: "sasha", password: "hi"},
{username: "daniel", password: "hi"},
{username: "annie", password: "hi"},
{username: "dusty", password: "hi"}]

User.create(users)

groups = [{creator_id: 1, name: "doctors"},
{creator_id: 2, name: "lawyers"},
{creator_id: 3, name: "readers"},
{creator_id: 3, name: "travelers"},
{creator_id: 5, name: "programmers"},
{creator_id: 1, name: "happy people"}]

Group.create(groups)

memberships = [{group_id: 1, member_id: 1},
	{group_id: 2, member_id: 2},
	{group_id: 2, member_id: 3},
	{group_id: 2, member_id: 5},
	{group_id: 5, member_id: 1},
	{group_id: 5, member_id: 2},
	{group_id: 5, member_id: 3},
	{group_id: 5, member_id: 4},
	{group_id: 5, member_id: 5},
	{group_id: 3, member_id: 4},
	{group_id: 3, member_id: 2},
	{group_id: 4, member_id: 1},
	{group_id: 6, member_id: 1},
	{group_id: 1, member_id: 2}]

	Membership.create(memberships)