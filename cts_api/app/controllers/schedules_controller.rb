class SchedulesController < ApplicationController

    def index
        @number_of_days_in_month = Time.days_in_month(get_month, get_year)
        @current_day_of_year = Time.now.to_date.strftime("%A")
        @current_time = Time.now.strftime("%R")
        @current_month_name = Time.now.strftime("%B")
        @all_days_in_month = []
        first_day_of_month = Time.now.beginning_of_month
        @all_days_in_month << first_day_of_month
        while @all_days_in_month.size <= @number_of_days_in_month - 1
            @all_days_in_month.push @all_days_in_month.last.next_day
        end
        @all_days_in_month
        # display days until day.next_month

        render json: { 
            number_of_days_in_month: @number_of_days_in_month,
            current_day: @current_day_of_year,
            current_time: @current_time,
            current_month_name: @current_month_name,
            all_days_in_month: @all_days_in_month 
        }
    end

    def get_day
        @current_day = Time.now.to_date.strftime("%A")
        # im free next friday... dont get this friday..get next
    end

    def get_date_number
        @date_number = Time.now.day
    end

    def get_month
        @month = Time.now.month
    end

    def day_of_year
        @current_day_of_year = Time.now.yday
    end

    def get_year
        @year = Time.now.year
    end

end
