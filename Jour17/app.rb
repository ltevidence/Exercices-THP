require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/townhall' #plus besoin de préciser le path exact

Bundler.require

mail_scrap = Scrapper.new

def save_as_json(mail_scrap)
  File.open("db/emails.json", "w") do |f|
  f.write(mail_scrap.get_data("http://annuaire-des-mairies.com/val-d-oise.html").to_json)
  json = File.read("db/emails.json")
  obj = JSON.parse(json)
  end
end

def save_as_spreadsheet(mail_scrap)
  session = GoogleDrive::Session.from_config("lib/config.json")

# First worksheet of
# https://docs.google.com/spreadsheet/ccc?key=pz7XtlQC-PYx-jrVMJErTcg
# Or https://docs.google.com/a/someone.com/spreadsheets/d/pz7XtlQC-PYx-jrVMJErTcg/edit?usp=drive_web
ws = session.spreadsheet_by_key("1L0678NZZqVg2nqvuK7JthJU7nzIBuhflWm-PYJgimME").worksheets[0]
# Changes content of cells.
# Changes are not sent to the server until you call ws.save().
i = 1
mail_scrap.get_data("http://annuaire-des-mairies.com/val-d-oise.html"). each do |city, mail|
ws[i, 1] = city
ws[i, 2] = mail
i += 1
end

ws.save
end

def save_as_csv(mail_scrap)

  CSV.open("db/emails.csv", "wb") do |csv|
    i = 1
    mail_scrap.get_data("http://annuaire-des-mairies.com/val-d-oise.html"). each do |city, mail|
    
    csv << [city, mail]
    i + 1
    end
  end
end

save_as_csv(mail_scrap)