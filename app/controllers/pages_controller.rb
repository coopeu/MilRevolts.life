class PagesController < ApplicationController

def homepage
	@basic = Plan.find(1)
	@membre = Plan.find(2)
	@associat = Plan.find(3)
end

def sortides
end

def media
end

def blog
end

def ofertes
end

def contacte
end

def faq
end

def cookies
end

def privacitat
end

def termes
end


end
