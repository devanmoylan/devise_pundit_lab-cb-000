class UserPolicy < ApplicationPolicy

  def index?
    user_admin?
  end

  def destroy?
    user_admin?
  end

  def show?
    user_admin? || record == user
  end

  def update?
    user_admin?
  end

  def user_admin?
    user.admin?
  end

end
