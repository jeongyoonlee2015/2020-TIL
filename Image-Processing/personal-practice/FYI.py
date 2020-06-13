import os
import zipfile
 
zipzip_zip = zipfile.ZipFile('/content/archive.zip', 'w')

 
for folder, subfolders, files in os.walk('/content'):
 
    for file in files:
        if file.endswith('.pth'):
            fantasy_zip.write(os.path.join(folder, file), os.path.relpath(os.path.join(folder,file), '/content'), compress_type = zipfile.ZIP_DEFLATED)
 
zipzip_zip.close()

#import zipfile
       
#jungle_zip = zipfile.ZipFile('/content/model/archive.zip', 'w')
#jungle_zip.write('/content/model/model_epoch10.pth', compress_type=zipfile.ZIP_DEFLATED)
 
#jungle_zip.close()
