class CreateJoinTableMemberRepository < ActiveRecord::Migration[6.1]
  def change
    create_join_table :members, :repositories do |t|
      # t.index [:member_id, :repository_id]
      # t.index [:repository_id, :member_id]
    end
  end
end
