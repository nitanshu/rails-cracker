# frozen_string_literal: true

# :nodoc:
class Employee < ApplicationRecord
  include MainConcern

  has_many :projects, -> { extending FindRecentExtension }, autosave: true, validate: true
  has_many :histories
  has_many :subordinates, class_name: 'Employee', foreign_key: 'manager_id' # Self Join

  belongs_to :manager, class_name: 'Employee', optional: true
  has_many :pictures, as: :imageable

  has_many_attached :pictures

  accepts_nested_attributes_for :projects

  validates :name, presence: true
  validates :salary, presence: true

  after_find :call_find
  after_initialize :call_initialize

  before_validation :call_before_validation
  after_validation :call_after_validation
  before_save :call_before_save
  around_save :call_around_save

  before_create :call_before_create
  before_update :call_before_update

  after_create :call_after_create
  after_update :call_after_update

  after_save :call_after_save
  before_commit :call_before_commit
  after_commit :call_after_commit
  after_rollback :call_after_rollback

  validates_each :name do |record, attr, value|
    puts "=========#{record}======#{attr}==========#{value}"
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
  end

  def call_initialize
    puts 'call initialize'
  end

  def call_find
    puts 'calling find'
  end

  def call_before_validation
    puts 'calling before validaion'
  end

  def call_after_validation
    puts 'calling after validaion'
  end

  def call_before_save
    puts 'calling before save'
  end

  def call_before_update
    puts 'calling before update'
  end

  def call_before_create
    puts 'calling before create'
  end

  def call_after_save
    puts 'calling after save'
  end

  def call_after_create
    puts 'calling after create'
  end

  def call_after_update
    puts 'call after update'
  end

  def call_after_commit
    puts 'calling after commit'
  end

  def call_before_commit
    puts 'calling before commit'
  end

  def call_around_save
    puts 'calling around in save'
    yield
    puts 'calling around out save'
  end

  def call_after_rollback
    puts 'calling after rollback'
  end
end
