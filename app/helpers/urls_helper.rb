module UrlsHelper
  
  def random_cher_image
   "cher" << (1 + rand(4)).to_s << ".jpeg"
  end
end
