module FindRecentExtension
  def find_recent
    p "==========owner==#{proxy_association.owner.inspect}=========reflection==#{proxy_association.owner.inspect}============target====#{proxy_association.target}"
    where("created_at > ?", 5.days.ago)
  end
end