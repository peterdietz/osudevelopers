class Developer < ActiveRecord::Base
  belongs_to :team

  validates :username, format: /^[a-z]+\.\d+$/i, presence: true

  attr_accessible :bio, :github_username, :name, :team_id, :twitter_username, :username

  def email
    if username.nil?
      return nil
    else
      return username + '@osu.edu'
    end
  end

  def yammerURL
    "https://www.yammer.com/osu.edu/users/" + username.gsub('.','-')
  end

  def yammerAPIURL
    # https://www.yammer.com/api/v1/users/by_email.json?email=dietz.72@osu.edu
    return 'https://www.yammer.com/api/v1/users/by_email.json?email=' + email
  end

  def kmdataPersonURL
    if username.nil?
      return nil
    end

    kmdataBaseURL = 'https://kmdata.osu.edu/people/'
    includeString = '?include=addresses,advisees,appointments,artworks,audio_visual_works,biographies,books,chapters,clinical_services,clinical_trials,conferences,degree_certifications,edited_books,editorial_activities,emails,honors,identifiers,journal_articles,language_proficiencies,languages,misc_courses,musics,narratives,other_creative_works,patents,phone_numbers,positions,preferred_appointments,preferred_keywords,preferred_names,presentations,professional_activities,professional_society_memberships,reference_works,resource,softwares,strategic_initiatives,technical_reports,unpublished_works'
    return kmdataBaseURL + username + '.json' + includeString
  end

  def githubReposURL
    if github_username.nil? or github_username.blank?
      return nil
    end

    return 'https://api.github.com/users/' + github_username + '/repos'
  end
end

