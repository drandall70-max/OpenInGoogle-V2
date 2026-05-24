# OpenInGoogle Default Opener

OpenInGoogle is a Windows 11 utility that makes double-clicking Microsoft Office files open them in the Google web equivalent.

## Intended workflow

- Double-click a Word, Excel, or PowerPoint file.
- OpenInGoogle uploads the file to your own Google Drive.
- Google converts it to Docs, Sheets, or Slides.
- The converted file opens in your browser.
- To open in Microsoft Office instead, right-click the file and choose **Open with**.

## Supported files

| Local file type | Opens in |
|---|---|
| `.docx`, `.doc`, `.rtf` | Google Docs |
| `.xlsx`, `.xls`, `.xlsm` | Google Sheets |
| `.pptx`, `.ppt` | Google Slides |

## Windows 11 note

The installer registers OpenInGoogle as an Office-file opener and offers to make it the default app. Windows 11 may still require users to confirm the default app manually.

## Build

Run the GitHub Action:

Actions > Build Windows Installer > Run workflow

The artifact contains OpenInGoogleSetup-v2.0.0.exe.

## Uninstall

Use Settings > Apps > Installed apps > OpenInGoogle > Uninstall, or Start Menu > OpenInGoogle > Uninstall OpenInGoogle.

## Known limitations

- Windows 11 may require manual confirmation of default app associations.
- Complex Office formatting may not convert perfectly.
- Excel VBA macros are not preserved.
- Password-protected files are not supported.
- Older binary Excel files and nonstandard files may be unreliable.
- The app creates a new converted Google file each time.
