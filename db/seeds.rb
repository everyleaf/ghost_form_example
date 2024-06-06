# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Meeting.find_or_create_by!(title: "XXX Meetup", category: "real", meeting_room: "Room 1")
Meeting.find_or_create_by!(title: "YYY Online meeting", category: "online", meeting_url: "https://www.example.com/")
Meeting.find_or_create_by!(title: "ZZZ Hybrid event", category: "hybrid", meeting_room: "Room 2", meeting_url: "https://www.example.com/")
