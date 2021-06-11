require "google_drive"

# Creates a session. This will prompt the credential via command line for the
# first time and save it to config.json file for later usages.
# See this document to learn how to create config.json:
# https://github.com/gimite/google-drive-ruby/blob/master/doc/authorization.md
session = GoogleDrive::Session.from_config("config.json")

# First worksheet of
# https://docs.google.com/spreadsheet/ccc?key=pz7XtlQC-PYx-jrVMJErTcg
# Or https://docs.google.com/a/someone.com/spreadsheets/d/pz7XtlQC-PYx-jrVMJErTcg/edit?usp=drive_web
working_sheets = session.spreadsheet_by_key("1L0678NZZqVg2nqvuK7JthJU7nzIBuhflWm-PYJgimME").worksheets[0]

# Gets content of A2 cell.
p working_sheets [4, 6]  #==> "hoge"

# Changes content of cells.
# Changes are not sent to the server until you call ws.save().
working_sheets [2, 1] = "foo"
working_sheets[2, 2] = "bar"
working_sheets [2, 3] = "Coucou"
working_sheets[2, 4] = "Au revoir"
working_sheets [1, 1] = "Coucou"
working_sheets[1, 2] = "Au revoir"
working_sheets.save

# Dumps all cells.
(1..working_sheets.num_rows).each do |row|
  (1..working_sheets.num_cols).each do |col|
    p working_sheets[row, col]
  end
end

# Yet another way to do so.
p working_sheets.rows  #==> [["fuga", ""], ["foo", "bar]]

# Reloads the worksheet to get changes by other clients.
working_sheets.reload