class Employee < ApplicationRecord
  include MainConcern
  has_many :projects, -> {extending FindRecentExtension}, autosave: true, validate: true
  has_many :histories
  has_many :subordinates, class_name: "Employee",
           foreign_key: "manager_id"
  belongs_to :manager, class_name: 'Employee', optional: true
  has_many :pictures, as: :imageable
  accepts_nested_attributes_for :projects
  # validates :name, presence: true, name: true
  after_find :call_find
  after_initialize :call_initialize
  after_validation :call_after_validation
  before_validation :call_before_validation
  after_save :call_after_save
  after_create :call_after_create
  after_update :call_after_update
  before_create :call_before_create
  before_update :call_before_update
  before_save :call_before_save
  before_commit :call_before_commit
  after_commit :call_after_commit
  around_save :call_around_save
  # validates_each :name do |record, attr, value|
  #   puts "=========#{record}======#{attr}==========#{value}"
  #   record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  # end
  def call_initialize
    puts "call initialize"
  end
  def call_find
    puts "calling find"
  end

  def call_before_validation
    puts "calling before validaion"
  end

  def call_after_validation
    puts "calling after validaion"
  end

  def call_before_save
    puts "calling before save"
  end
  def call_before_update
    puts "calling before update"
  end
  def call_before_create
    puts "calling before create"
  end

  def call_after_save
    puts "calling after save"
  end

  def call_after_create
    puts "calling after create"
  end

  def call_after_update
    puts "call after update"
  end
  def call_after_commit
    puts "calling after commit"
  end

  def call_before_commit
    puts "calling before commit"
  end

  def call_around_save
    puts "calling around in save"
    yield
    puts "calling around out save"
  end

end
