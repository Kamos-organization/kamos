module Site::Settings::ProfileHelper
  def gender user
    return t(:gender_no_selected) if user.gender == 0
    return t(:men) if user.gender == 1
    t(:women) if user.gender == 2
  end
end
