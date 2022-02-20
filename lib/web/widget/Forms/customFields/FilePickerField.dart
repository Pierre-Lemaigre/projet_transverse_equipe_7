import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:universal_html/html.dart' as html;

class FilePickerForm extends StatefulWidget {
  final String icone;

  const FilePickerForm({Key? key, required this.icone}) : super(key: key);

  @override
  _FilePickerFormState createState() => _FilePickerFormState();
}

class _FilePickerFormState extends State<FilePickerForm> {
  Color _enabledColor = Colors.white;
  PlatformFile? _file;
  String _fileExtension = "";
  String _mimeType = "";
  bool _fileExist = false;

  void previewFileInTab() {
    if (_file == null) {
      return;
    }
    switch (_fileExtension) {
      case "pdf":
        {
          _mimeType = "application/pdf";
        }
        break;
      case "jpg":
        {
          _mimeType = "image/jpeg";
        }
        break;
      case "png":
        {
          _mimeType = "image/png";
        }
    }
    final blob = html.Blob([_file!.bytes], _mimeType);
    final url = html.Url.createObjectUrl(blob);
    html.window.open(url, "_blank");
    html.Url.revokeObjectUrl(url);
  }

  void pickFile() async {
    FilePickerResult? res = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        allowedExtensions: ['pdf', 'jpg', 'png'],
        type: FileType.custom);
    if (res == null) {
      return;
    }
    setState(() {
      _file = res.files.first;
      _enabledColor = Colors.teal.shade200;
      _fileExtension = _file!.extension.toString();
      _fileExist = true;
    });
  }

  void removeFile() {
    setState(() {
      _fileExist = false;
      _file = null;
      _enabledColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  iconSize: 90,
                  padding: EdgeInsets.zero,
                  splashRadius: _fileExist ? 50 : 1,
                  icon: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      widget.icone,
                      width: 75,
                      height: 75,
                    ),
                    decoration: BoxDecoration(
                      color: _enabledColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  onPressed: _fileExist ? previewFileInTab : null,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: pickFile,
                    splashRadius: 22,
                    icon: Icon(Icons.add_circle_outline_rounded),
                    iconSize: 32,
                    padding: EdgeInsets.zero,
                  ),
                  IconButton(
                    onPressed: _fileExist ? removeFile : null,
                    splashRadius: _fileExist ? 22 : 1,
                    icon: Icon(Icons.remove_circle_outline_rounded),
                    iconSize: 32,
                    padding: EdgeInsets.zero,
                  ),
                ],
              )
            ],
          ),
          ConstrainedBox(
            constraints: BoxConstraints.loose(Size.fromWidth(130)),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 8),
              child: Text(
                _file != null ? _file!.name : "Pas de fichier",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
