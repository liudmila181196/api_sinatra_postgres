class Apply < Sequel::Model
  #belongs_to :geeks
  #belongs_to :jobs

  def self.read
    where(read: true)
  end

  def self.unread
    where(read: false)
  end

  def to_api
    {
        id: id,
        read: read,
        invited: invited,
        job_id: job_id,
        geek_id: geek_id,
    }
  end
end