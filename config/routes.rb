Rails.application.routes.draw do
  mount Teaser::Engine => '/teaser'
  get '/', to: redirect('/teaser')
end
