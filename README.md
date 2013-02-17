# PListReadWrite

A Rubymotion module to make light work of writing to and reading from plist files.

## Installation

Add the following to your app's Gemfile

    gem 'plist_read_write'

Alternatively, it's a small file so you can just copy/paste it directly to your app.

## Example Usage

Lets assume we have this plist file in our resources directory...

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>jim</key>
    <dict>
      <key>name</key>
      <string>Jim</string>
      <key>email</key>
      <string>jim@jimsemail.com</string>
    </dict>
    <key>jane</key>
    <dict>
      <key>name</key>
      <string>Jane</string>
      <key>email</key>
      <string>jane@janesemail.com</string>
    </dict>
  </dict>
</plist>
```

... and we want to copy it over to our app's documents directory so we can update/edit the plist.

``` ruby

# Check if the plist exists in our documents dir
PListRW.exist?(:users, :documentsDir) # => false

# Check if the plist exists in our main bundle
PListRW.exist?(:users, :mainBundle) # => true

# Copy the plist file from the main bundle to the documents dir
PListRW.copyPlistFileFromBundle(:users)

# Fetch the object from the plist file
@users_hash = PListRW.plistObject(:users, Hash) # => A hash containing the User data

# Update the data
@users_hash[:jim] # => { name: "Jim", email: "jim@jimsemail.com" }
@users_hash[:jim][:name] = 'James'

# Store the data back in the plist
PListRW.updatePlistFileWithObject(:users, @users_hash)

# Check this worked OK
PListRW.plistObject(:users, Hash)[:jim][:name] # => "James"
```