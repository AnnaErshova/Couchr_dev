require 'rails_helper'

describe UserPolicy do
  subject { UserPolicy }

  let (:current_user) { FactoryGirl.build_stubbed :user }
  let (:other_user) { FactoryGirl.build_stubbed :user }
  let (:coach) { FactoryGirl.build_stubbed :user, :coach }

  permissions :index? do
    it "denies access if not a coach" do
      expect(UserPolicy).not_to permit(current_user)
    end
    it "allows access for a coach" do
      expect(UserPolicy).to permit(coach)
    end
  end

  permissions :show? do
    it "prevents other users from seeing your profile" do
      expect(subject).not_to permit(current_user, other_user)
    end
    it "allows you to see your own profile" do
      expect(subject).to permit(current_user, current_user)
    end
    it "allows a coach to see any profile" do
      expect(subject).to permit(coach)
    end
  end

  permissions :update? do
    it "prevents updates if not a coach" do
      expect(subject).not_to permit(current_user)
    end
    it "allows a coach to make updates" do
      expect(subject).to permit(coach)
    end
  end

  permissions :destroy? do
    it "prevents deleting yourself" do
      expect(subject).not_to permit(current_user, current_user)
    end
    it "allows a coach to delete any user" do
      expect(subject).to permit(coach, other_user)
    end
  end

end
