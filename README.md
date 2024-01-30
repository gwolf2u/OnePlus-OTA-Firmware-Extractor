## Usage

*Credits to luk1337 as this is mostly his work while I've adapted to my needs*

The `dump.sh` script extracts and applies incremental OTA updates to a full update package.

1. **FullPackage:** The name of the full update package, including the file extension (e.g., `OP9.zip`).
2. **(optional) firstpackage:** The name of the first incremental update package, including the file extension (e.g., `OP9-1.zip`).
3. **(optional) secondpackage:** The name of the second incremental update package, including the file extension (e.g., `OP9-2.zip`).

**Example:**

```bash
./dump.sh OP9 1 2
```

This will extract `OP9.zip` and apply `OP9-1.zip` OTA to `OP9.zip`, then apply `OP9-2.zip` and so on.

**Output:**

The script will output progress messages as it extracts and applies the updates. Finally, it will prompt the whether to extract the individual blobs from the extracted update.

**Example run log**
```
$ ./dump.sh OP9 1
Archive:  packages/OP9.zip
signed by SignApk
 extracting: payload.bin             
[0130/184104.156955:INFO:ota_extractor.cc(117)] Extracting partition featenabler size: 90112
[0130/184104.195662:INFO:ota_extractor.cc(117)] Extracting partition cpucp size: 106496
[0130/184104.228788:INFO:ota_extractor.cc(117)] Extracting partition vbmeta_system size: 4096
[0130/184104.265733:INFO:ota_extractor.cc(117)] Extracting partition imagefv size: 94208
[0130/184104.298350:INFO:ota_extractor.cc(117)] Extracting partition tz size: 3780608
[0130/184104.370666:INFO:ota_extractor.cc(117)] Extracting partition my_carrier size: 335872
[0130/184104.378528:INFO:ota_extractor.cc(117)] Extracting partition vendor size: 625868800
[0130/184124.589455:INFO:ota_extractor.cc(117)] Extracting partition xbl_config size: 221184
[0130/184124.600365:INFO:ota_extractor.cc(117)] Extracting partition system size: 704884736
[0130/184147.228902:INFO:ota_extractor.cc(117)] Extracting partition boot size: 201326592
[0130/184149.010503:INFO:ota_extractor.cc(117)] Extracting partition my_manifest size: 364544
[0130/184149.024890:INFO:ota_extractor.cc(117)] Extracting partition my_region size: 3862528
[0130/184149.154610:INFO:ota_extractor.cc(117)] Extracting partition odm size: 1035194368
[0130/184219.393187:INFO:ota_extractor.cc(117)] Extracting partition splash size: 344064
[0130/184219.405255:INFO:ota_extractor.cc(117)] Extracting partition my_bigball size: 1056956416
[0130/184245.585570:INFO:ota_extractor.cc(117)] Extracting partition dsp size: 67108864
[0130/184246.465412:INFO:ota_extractor.cc(117)] Extracting partition qweslicstore size: 262144
[0130/184246.473064:INFO:ota_extractor.cc(117)] Extracting partition abl size: 217088
[0130/184246.482398:INFO:ota_extractor.cc(117)] Extracting partition product size: 2883584
[0130/184246.573868:INFO:ota_extractor.cc(117)] Extracting partition bluetooth size: 1912832
[0130/184246.603593:INFO:ota_extractor.cc(117)] Extracting partition devcfg size: 53248
[0130/184246.610908:INFO:ota_extractor.cc(117)] Extracting partition system_ext size: 1089691648
[0130/184319.343898:INFO:ota_extractor.cc(117)] Extracting partition my_product size: 483155968
[0130/184328.808857:INFO:ota_extractor.cc(117)] Extracting partition qupfw size: 57344
[0130/184328.817150:INFO:ota_extractor.cc(117)] Extracting partition keymaster size: 286720
[0130/184328.832955:INFO:ota_extractor.cc(117)] Extracting partition my_stock size: 993771520
[0130/184353.593497:INFO:ota_extractor.cc(117)] Extracting partition aop size: 245760
[0130/184353.605838:INFO:ota_extractor.cc(117)] Extracting partition xbl size: 4313088
[0130/184353.719977:INFO:ota_extractor.cc(117)] Extracting partition vbmeta size: 8192
[0130/184353.727058:INFO:ota_extractor.cc(117)] Extracting partition modem size: 217411584
[0130/184357.675917:INFO:ota_extractor.cc(117)] Extracting partition hyp size: 3723264
[0130/184357.732435:INFO:ota_extractor.cc(117)] Extracting partition engineering_cdt size: 1048576
[0130/184357.745414:INFO:ota_extractor.cc(117)] Extracting partition my_engineering size: 335872
[0130/184357.753906:INFO:ota_extractor.cc(117)] Extracting partition my_heytap size: 921382912
[0130/184425.166241:INFO:ota_extractor.cc(117)] Extracting partition vm-bootsys size: 179998720
[0130/184427.434995:INFO:ota_extractor.cc(117)] Extracting partition shrm size: 49152
[0130/184427.443037:INFO:ota_extractor.cc(117)] Extracting partition multiimgoem size: 16384
[0130/184427.449202:INFO:ota_extractor.cc(117)] Extracting partition dtbo size: 25165824
[0130/184427.598598:INFO:ota_extractor.cc(117)] Extracting partition vbmeta_vendor size: 4096
[0130/184427.604946:INFO:ota_extractor.cc(117)] Extracting partition uefisecapp size: 126976
[0130/184427.615517:INFO:ota_extractor.cc(117)] Extracting partition oplusstanvbk size: 7069696
[0130/184427.835034:INFO:ota_extractor.cc(117)] Extracting partition vendor_boot size: 201326592
[0130/184428.789355:INFO:ota_extractor.cc(117)] Extracting partition oplus_sec size: 294912
Applying OP9-1...
Archive:  packages/OP9-1.zip
signed by SignApk
 extracting: payload.bin             
[0130/184429.635241:INFO:ota_extractor.cc(117)] Extracting partition tz size: 3780608
[0130/184429.635296:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition tz opening source image ota/tz.img
[0130/184429.703800:INFO:ota_extractor.cc(117)] Extracting partition aop size: 245760
[0130/184429.703845:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition aop opening source image ota/aop.img
[0130/184429.721200:INFO:ota_extractor.cc(117)] Extracting partition vbmeta size: 8192
[0130/184429.721234:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition vbmeta opening source image ota/vbmeta.img
[0130/184429.734806:INFO:ota_extractor.cc(117)] Extracting partition xbl_config size: 221184
[0130/184429.734838:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition xbl_config opening source image ota/xbl_config.img
[0130/184429.747385:INFO:ota_extractor.cc(117)] Extracting partition system_ext size: 1089835008
[0130/184429.747416:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition system_ext opening source image ota/system_ext.img
[0130/184440.534563:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184440.534589:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184444.793949:INFO:ota_extractor.cc(117)] Extracting partition shrm size: 49152
[0130/184444.794012:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition shrm opening source image ota/shrm.img
[0130/184444.809400:INFO:ota_extractor.cc(117)] Extracting partition hyp size: 3723264
[0130/184444.809431:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition hyp opening source image ota/hyp.img
[0130/184444.853336:INFO:ota_extractor.cc(117)] Extracting partition multiimgoem size: 16384
[0130/184444.853370:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition multiimgoem opening source image ota/multiimgoem.img
[0130/184444.866763:INFO:ota_extractor.cc(117)] Extracting partition my_bigball size: 1056956416
[0130/184444.866794:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition my_bigball opening source image ota/my_bigball.img
[0130/184447.475977:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184447.475994:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184451.385497:INFO:ota_extractor.cc(117)] Extracting partition my_manifest size: 368640
[0130/184451.385554:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition my_manifest opening source image ota/my_manifest.img
[0130/184451.408986:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184451.408997:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184451.413586:INFO:ota_extractor.cc(117)] Extracting partition my_region size: 3862528
[0130/184451.413610:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition my_region opening source image ota/my_region.img
[0130/184451.427177:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184451.427183:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184451.439055:INFO:ota_extractor.cc(117)] Extracting partition dsp size: 67108864
[0130/184451.439085:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition dsp opening source image ota/dsp.img
[0130/184451.731269:INFO:ota_extractor.cc(117)] Extracting partition my_heytap size: 921382912
[0130/184451.731325:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition my_heytap opening source image ota/my_heytap.img
[0130/184453.884245:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184453.884264:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184457.164365:INFO:ota_extractor.cc(117)] Extracting partition my_product size: 483155968
[0130/184457.164449:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition my_product opening source image ota/my_product.img
[0130/184458.321405:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184458.321424:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184500.084374:INFO:ota_extractor.cc(117)] Extracting partition boot size: 201326592
[0130/184500.084425:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition boot opening source image ota/boot.img
[0130/184502.396317:INFO:ota_extractor.cc(117)] Extracting partition dtbo size: 25165824
[0130/184502.396381:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition dtbo opening source image ota/dtbo.img
[0130/184502.668461:INFO:ota_extractor.cc(117)] Extracting partition vbmeta_vendor size: 4096
[0130/184502.668524:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition vbmeta_vendor opening source image ota/vbmeta_vendor.img
[0130/184502.767321:INFO:ota_extractor.cc(117)] Extracting partition vbmeta_system size: 4096
[0130/184502.767383:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition vbmeta_system opening source image ota/vbmeta_system.img
[0130/184502.781668:INFO:ota_extractor.cc(117)] Extracting partition odm size: 1035198464
[0130/184502.781713:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition odm opening source image ota/odm.img
[0130/184505.353934:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184505.353953:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184509.045145:INFO:ota_extractor.cc(117)] Extracting partition abl size: 217088
[0130/184509.045238:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition abl opening source image ota/abl.img
[0130/184509.069955:INFO:ota_extractor.cc(117)] Extracting partition qupfw size: 57344
[0130/184509.069989:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition qupfw opening source image ota/qupfw.img
[0130/184509.085436:INFO:ota_extractor.cc(117)] Extracting partition vendor_boot size: 201326592
[0130/184509.085488:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition vendor_boot opening source image ota/vendor_boot.img
[0130/184510.172755:INFO:ota_extractor.cc(117)] Extracting partition bluetooth size: 1912832
[0130/184510.172836:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition bluetooth opening source image ota/bluetooth.img
[0130/184510.370491:INFO:ota_extractor.cc(117)] Extracting partition cpucp size: 106496
[0130/184510.370531:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition cpucp opening source image ota/cpucp.img
[0130/184510.386909:INFO:ota_extractor.cc(117)] Extracting partition engineering_cdt size: 1048576
[0130/184510.386940:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition engineering_cdt opening source image ota/engineering_cdt.img
[0130/184510.405513:INFO:ota_extractor.cc(117)] Extracting partition system size: 704880640
[0130/184510.405544:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition system opening source image ota/system.img
[0130/184517.801253:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184517.801273:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184520.300892:INFO:ota_extractor.cc(117)] Extracting partition keymaster size: 286720
[0130/184520.300974:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition keymaster opening source image ota/keymaster.img
[0130/184520.318957:INFO:ota_extractor.cc(117)] Extracting partition vendor size: 625799168
[0130/184520.318991:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition vendor opening source image ota/vendor.img
[0130/184525.596662:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184525.596681:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184527.917975:INFO:ota_extractor.cc(117)] Extracting partition uefisecapp size: 126976
[0130/184527.918044:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition uefisecapp opening source image ota/uefisecapp.img
[0130/184527.937825:INFO:ota_extractor.cc(117)] Extracting partition product size: 2883584
[0130/184527.937858:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition product opening source image ota/product.img
[0130/184528.010934:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184528.010941:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184528.027699:INFO:ota_extractor.cc(117)] Extracting partition oplus_sec size: 294912
[0130/184528.027736:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition oplus_sec opening source image ota/oplus_sec.img
[0130/184528.041060:INFO:ota_extractor.cc(117)] Extracting partition devcfg size: 53248
[0130/184528.041093:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition devcfg opening source image ota/devcfg.img
[0130/184528.051285:INFO:ota_extractor.cc(117)] Extracting partition splash size: 344064
[0130/184528.051316:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition splash opening source image ota/splash.img
[0130/184528.061008:INFO:ota_extractor.cc(117)] Extracting partition my_stock size: 993771520
[0130/184528.061034:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition my_stock opening source image ota/my_stock.img
[0130/184530.522843:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184530.522864:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184534.127448:INFO:ota_extractor.cc(117)] Extracting partition oplusstanvbk size: 7069696
[0130/184534.127512:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition oplusstanvbk opening source image ota/oplusstanvbk.img
[0130/184534.190087:INFO:ota_extractor.cc(117)] Extracting partition vm-bootsys size: 179998720
[0130/184534.190138:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition vm-bootsys opening source image ota/vm-bootsys.img
[0130/184535.273199:INFO:ota_extractor.cc(117)] Extracting partition my_carrier size: 335872
[0130/184535.273260:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition my_carrier opening source image ota/my_carrier.img
[0130/184535.286380:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184535.286395:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
[0130/184535.299170:INFO:ota_extractor.cc(117)] Extracting partition imagefv size: 94208
[0130/184535.299204:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition imagefv opening source image ota/imagefv.img
[0130/184535.313249:INFO:ota_extractor.cc(117)] Extracting partition qweslicstore size: 262144
[0130/184535.313301:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition qweslicstore opening source image ota/qweslicstore.img
[0130/184535.330559:INFO:ota_extractor.cc(117)] Extracting partition modem size: 217411584
[0130/184535.330598:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition modem opening source image ota/modem.img
[0130/184539.842273:INFO:ota_extractor.cc(117)] Extracting partition xbl size: 4313088
[0130/184539.842330:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition xbl opening source image ota/xbl.img
[0130/184539.972524:INFO:ota_extractor.cc(117)] Extracting partition featenabler size: 90112
[0130/184539.972560:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition featenabler opening source image ota/featenabler.img
[0130/184540.012736:INFO:ota_extractor.cc(117)] Extracting partition my_engineering size: 335872
[0130/184540.012769:INFO:ota_extractor.cc(130)] Incremental OTA detected for partition my_engineering opening source image ota/my_engineering.img
[0130/184540.021169:INFO:verity_writer_android.cc(97)] Read everything before hash tree. Ready to write hash tree.
[0130/184540.021180:INFO:verity_writer_android.cc(119)] Writing verity hash tree to 
Do you want to extract blobs? (y/n): y
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
<E> erofs: cannot find valid erofs superblock
<E> erofs: failed to read superblock
Done

```