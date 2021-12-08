# frozen_string_literal: true
class SearchBuilder < Blacklight::SearchBuilder
  include Blacklight::Solr::SearchBuilderBehavior

  self.default_processor_chain += [
    :show_only_datasets
  ]

  def show_only_datasets(solr_parameters)
    solr_parameters[:fq] ||= []
    solr_parameters[:fq] << 'has_model_ssim:"Dataset"'
    solr_parameters[:fq] << '-member_of_collection_ids_ssim:"1r66j250c"'
  end
end
