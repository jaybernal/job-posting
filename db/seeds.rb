# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(email: "jjbernal@gmail.com", password: "password", password_confirmation: "password")
User.create(email: "mbernal@gmail.com", password: "password", password_confirmation: "password")

Company.create(name: "Aglix", image: "http://www.agilx.com/wp-content/uploads/2012/09/logo.png", benefit: "being awesome and working with awesome people", location: "Lincoln, NE", website: "http://www.agilx.com/", about_us: "Agilx is a software development team headquartered in the Technology Develop Center in Lincoln, NE. We love to write software and help our clients automate business process and solve complex problems. Call anytime to discuss your project, we would love to hear from you!")
Company.create(name: "Cabela's", image: "http://www.cabelas.com/content/dam/assets/Cabelas/HomePage/2015/Q1/Main/cabelas_CLUB.png", benefit: "Discount of Guns and dead animals", location: "Lincoln, NE", website: "http://www.cabelas.com/", about_us: "Cabela's, the World's Foremost Outfitter of hunting, fishing and outdoor gear, was born somewhat inadvertently in 1961 when Dick Cabela came up with a plan to sell fishing flies he purchased while at a furniture show in Chicago. Upon returning home to Chappell, Nebraska, Dick ran a classified ad in the Casper, Wyoming, newspaper reading:")
Company.create(name: "MyRacePass", image: "http://www.myracepass.com/css/mrp/img_v2/sitelogo.png", benefit: "discounts off race stuff", location: "Lincoln, NE", website: "http://www.myracepass.com", about_us: "We are fun")


Job.create(title: "Front-End Developer", company: Company.second, job_type: "Full-Time", pay: "35k-45k", experience: "Junior", languages: "CSS, JS, HTML")
Job.create(title: "Back-End Developer", company: Company.second, job_type: "Full-Time", pay: "45k-50k", experience: "Junior", languages: "CSS, JS, HTML")
Job.create(title: "Ruby Developer", company: Company.first, job_type: "Full-Time", pay: "35k-40K", experience: "Intern", languages: "Ruby")
Job.create(title: "C# Developer", company: Company.first, job_type: "Full-Time", pay: "35k-40K", experience: "Senior", languages: "C# and JS")
Job.create(title: "C# Developer", company: Company.first, job_type: "Full-Time", pay: "35k-40K", experience: "Junior", languages: "C#")
Job.create(title: "JavaScript Developer", company: Company.first, job_type: "Full-Time", pay: "35k-40K", experience: "Junior", languages: "JS")
Job.create(title: "Wordpress Developer", company: Company.last, job_type: "Part-Time", pay: "35k-40K", experience: "Junior", languages: "WordPress, PHP, JQuery")