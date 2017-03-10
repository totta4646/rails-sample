class HomeService < ApplicationService
  OPTIONS_NONE = 0
  OPTIONS_TEST = 1

  class << self
    def find_all(options = OPTIONS_NONE)
      user = User.all
      convert(user, options)
    end

    private

    def convert_object(object, options)
      (object.hoge = "fuga") if (options & OPTIONS_TEST) > 0
      object
    end
  end
end
