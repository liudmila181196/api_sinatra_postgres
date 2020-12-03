class Job < Sequel::Model
  many_to_one :company
  #belongs_to :company, :foreign_key => :company_id
  def to_api
    {
        id: id,
        name: name,
        company_id: company_id,
        place: place
    }
  end

  def self.company_jobs(company_id)
    where(company_id: company_id)
  end
end