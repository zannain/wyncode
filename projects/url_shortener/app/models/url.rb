class Url < ApplicationRecord
  def shorten
    request.original_url
  end

end

