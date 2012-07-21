module UrlsHelper
  
  def random_cher_image
   "cher" << (1 + rand(6)).to_s << ".jpeg"
  end
end
