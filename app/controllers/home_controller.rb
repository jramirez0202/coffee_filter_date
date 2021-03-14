class HomeController < ApplicationController
  def index
    
    @begin =Date.today - 12.months


    @sales = Sale.where('date between ? and ?' , @begin, Date.today).group_by_month(:date).order(:date, :asc).sum(:price)
    @salescount = Sale.where('date between ? and ?' , @begin, Date.today).group_by_month(:date).order(:date, :asc).count()
    @salesavg = Sale.where('date between ? and ?' , @begin, Date.today).group_by_month(:date).order(:date, :asc).average(:amount)

    @salespieorigin1 =  Sale.where('date between ? and ?' , @begin, Date.today).group(:origin).count()
    @begin =Date.today - 6.months
    @salespieorigin2 = Sale.where('date between ? and ?' , @begin, Date.today).group(:origin).count()
    @begin =Date.today - 3.months
    @salespieorigin3 = Sale.where('date between ? and ?' , @begin, Date.today).group(:origin).count()
    @begin =Date.today - 1.months
    @salespieorigin4 = Sale.where('date between ? and ?' , @begin, Date.today).group(:origin).count()

    @salespiename1 =  Sale.where('date between ? and ?' , @begin, Date.today).group(:name).count()
    @begin =Date.today - 6.months
    @salespiename2 = Sale.where('date between ? and ?' , @begin, Date.today).group(:name).count()
    @begin =Date.today - 3.months
    @salespiename3 = Sale.where('date between ? and ?' , @begin, Date.today).group(:name).count()
    @begin =Date.today - 1.months
    @salespiename4 = Sale.where('date between ? and ?' , @begin, Date.today).group(:name).count()


  end
end
