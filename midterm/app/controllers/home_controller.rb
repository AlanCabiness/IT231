class HomeController < ApplicationController

  def Index

    movies = Movie.all.order('id asc').limit(10)
    @topTen = movies

  end

  def ClassInfo
  end

  def MidtermExam
  end

  def genreCount
    allmovies = Movie.all
    action = 0
    actionGross=0
    actionTickets=0
    adventure = 0
    adventureGross=0
    adventureTickets=0
    comedy = 0
    comedyGross=0
    comedyTickets=0
    drama = 0
    dramaGross=0
    dramaTickets=0
    horror = 0
    horrorGross=0
    horrorTickets=0
    western = 0
    westernGross=0
    westernTickets=0
    thriller = 0
    thrillerGross=0
    thrillerTickets=0
    romCom = 0
    romComGross=0
    romComTickets=0
    blackCom = 0
    blackComGross=0
    blackComTickets=0
    musical = 0
    musicalGross=0
    musicalTickets=0
    concert = 0
    concertGross=0
    concertTickets=0
    documentary = 0
    documentaryGross=0
    documentaryTickets=0
    educational = 0
    educationalGross=0
    educationalTickets=0
    other = 0
    otherGross=0
    otherTickets=0
    allmovies.each do |i|
      if i.genre == 'Action'
        action+=1
        actionGross+=i.grossEarning
        actionTickets+=i.ticketsSold
      elsif i.genre == 'Adventure'
        adventure+=1
        adventureGross+=i.grossEarning
        adventureTickets+=i.ticketsSold
      elsif i.genre == 'Comedy'
        comedy+=1
        comedyGross+=i.grossEarning
        comedyTickets+=i.ticketsSold
      elsif i.genre == 'Drama'
        drama+=1
        dramaGross+=i.grossEarning
        dramaTickets+=i.ticketsSold
      elsif i.genre == 'Horror'
        horror+=1
        horrorGross+=i.grossEarning
        horrorTickets+=i.ticketsSold
      elsif i.genre == 'Western'
        western+=1
        westernGross+=i.grossEarning
        westernTickets+=i.ticketsSold
      elsif i.genre == 'Thriller-Suspense'
        thriller+=1
        thrillerGross+=i.grossEarning
        thrillerTickets+=i.ticketsSold
      elsif i.genre == 'Romantic Comedy'
        romCom+=1
        romComGross+=i.grossEarning
        romComTickets+=i.ticketsSold
      elsif i.genre == 'Black Comedy'
        blackCom+=1
        blackComGross+=i.grossEarning
        blackComTickets+=i.ticketsSold
      elsif i.genre == 'Musical'
        musical+=1
        musicalGross+=i.grossEarning
        musicalTickets+=i.ticketsSold
      elsif i.genre == 'Concert-Performance'
        concert+=1
        concertGross+=i.grossEarning
        concertTickets+=i.ticketsSold
      elsif i.genre == 'Documentary'
        documentary+=1
        documentaryGross+=i.grossEarning
        documentaryTickets+=i.ticketsSold
      elsif i.genre == 'Educational'
        educational+=1
        educationalGross+=i.grossEarning
        educationalTickets+=i.ticketsSold
      else
        other+=1
        otherGross+=i.grossEarning
        otherTickets+=i.ticketsSold

      end
    end
    @genreData=[action,actionGross,actionTickets,adventure,adventureGross,adventureTickets,comedy,comedyGross,comedyTickets,
                drama,dramaGross,dramaTickets,horror,horrorGross,horrorTickets,western,westernGross,westernTickets,
                thriller,thrillerGross,thrillerTickets,romCom,romComGross,romComTickets,blackCom,blackComGross,blackComTickets,
                musical,musicalGross,musicalTickets,concert,concertGross,concertTickets,documentary,documentaryGross,documentaryTickets,
                educational,educationalGross,educationalTickets,other,otherGross,otherTickets]
    @genres = ['Action', 'Adventure', 'Comedy', 'Drama', 'Horror', 'Western', 'Thriller-Suspense', 'Romantic Comedy', 'Black Comedy', 'Musical', 'Concert-Performance', 'Documentary', 'Educational', 'Other']
    '''@action = action
    @actionGross=actionGross
    @actionTickets=actionTickets
    @adventure = adventure
    @adventureGross=adventureGross
    @adventureTickets=adventureTickets
    @comedy = comedy
    @comedyGross=comedyGross
    @comedyTickets=comedyTickets
    @drama = drama
    @dramaGross=dramaGross
    @dramaTickets=dramaTickets
    @horror = horror
    @horrorGross=horrorGross
    @horrorTickets=horrorTickets
    @western = western
    @westernGross=westernGross
    @westernTickets=westernTickets
    @thriller = thriller
    @thrillerGross=thrillerGross
    @thrillerTickets=thrillerTickets
    @romCom = romCom
    @romComGross=romComGross
    @romComTickets=romComTickets
    @blackCom = blackCom
    @blackComGross=blackComGross
    @blackComTickets=blackComTickets
    @musical = musical
    @musicalGross=musicalGross
    @musicalTickets=musicalTickets
    @concert = concert
    @concertGross=concertGross
    @concertTickets=concertTickets
    @documentary = documentary
    @documentaryGross=documentaryGross
    @documentaryTickets=documentaryTickets
    @educational = educational
    @educationalGross=educationalGross
    @educationalTickets=educationalTickets
    @other = other
    @otherGross=otherGross
    @otherTickets=otherTickets'''
  end
end
