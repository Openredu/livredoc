class Document < ApplicationRecord
  mount_uploader :file, DocumentUploader

  validates :file, presence: true
  validates :document_id, presence: true, uniqueness: true

  def pdf_path
   "#{Rails.root}/public/files/" + pdf
  end
end
