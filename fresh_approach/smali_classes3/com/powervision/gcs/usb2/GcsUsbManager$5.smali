.class Lcom/powervision/gcs/usb2/GcsUsbManager$5;
.super Ljava/lang/Object;
.source "GcsUsbManager.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GcsUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final PaketSize:I

.field ii:J

.field lastTemp:[B

.field private needRestart:Z

.field final synthetic this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

.field tt:J

.field uu:I

.field ww:J

.field wwwww:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GcsUsbManager;)V
    .locals 2

    .line 879
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 880
    iput-boolean p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->needRestart:Z

    const/4 v0, 0x0

    .line 931
    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->lastTemp:[B

    .line 1031
    iput p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->wwwww:I

    const/16 v0, 0x4000

    .line 1391
    iput v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->PaketSize:I

    const-wide/16 v0, 0x0

    .line 1392
    iput-wide v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->ww:J

    .line 1393
    iput-wide v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->ii:J

    .line 1394
    iput-wide v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->tt:J

    .line 1395
    iput p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->uu:I

    return-void
.end method

.method private ENCODING(I[B[B)Z
    .locals 12

    const/16 v0, 0x2760

    const-string v1, "lzqHttp"

    const/4 v2, 0x2

    const/16 v3, 0x30

    const/4 v4, 0x5

    const/16 v5, 0x31

    const/16 v6, 0x41

    const/16 v7, 0x32

    const/4 v8, 0x1

    const/4 v9, 0x4

    if-eq p1, v0, :cond_5c

    const/16 v0, 0x2761

    if-eq p1, v0, :cond_5b

    const/16 v0, 0x285d

    const/4 v1, 0x0

    if-eq p1, v0, :cond_56

    const/16 v0, 0x2947

    if-eq p1, v0, :cond_52

    const/16 v0, 0x2afa

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x2bd6

    const-string v10, "lzqw4_dl01_g"

    if-eq p1, v0, :cond_49

    const/16 v0, 0x2ee2

    if-eq p1, v0, :cond_44

    const/16 v0, 0x2fbe

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x28ca

    const-string v11, "lzqFirm"

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x28cb

    if-eq p1, v0, :cond_35

    const/16 v0, 0x293a

    if-eq p1, v0, :cond_2f

    const/16 v0, 0x293b

    if-eq p1, v0, :cond_2b

    const/16 v0, 0x29aa

    const-string v11, "lzqBody"

    if-eq p1, v0, :cond_26

    const/16 v0, 0x29ab

    if-eq p1, v0, :cond_21

    const/16 v0, 0x2a88

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x2a89

    if-eq p1, v0, :cond_19

    const/16 v0, 0x2aa2

    if-eq p1, v0, :cond_15

    const/16 v0, 0x2aa3

    if-eq p1, v0, :cond_11

    const/16 v0, 0x2b0c

    const-string v10, "lzqup"

    if-eq p1, v0, :cond_d

    const/16 v0, 0x2b0d

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4a39

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4a3a

    if-eq p1, v0, :cond_0

    const/4 v8, 0x0

    goto/16 :goto_e

    .line 1079
    :cond_0
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_1

    const-string p1, "lzqSonar"

    const-string p2, " SONAR_CTRL \u63a5\u5230\u5f00\u59cb "

    .line 1080
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object p1

    invoke-virtual {p1, v1, v8}, Lcom/powervision/gcs/usb2/SonarManager;->receiveContrlData([BI)V

    goto/16 :goto_e

    .line 1082
    :cond_1
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_2

    const-string p1, "lzqSonar"

    const-string p2, " SONAR_CTRL \u63a5\u5230Cancel "

    .line 1083
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Lcom/powervision/gcs/usb2/SonarManager;->receiveContrlData([BI)V

    goto/16 :goto_e

    .line 1085
    :cond_2
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_4

    aget-byte p1, p3, v9

    if-ne p1, v7, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_61

    .line 1089
    array-length p1, p2

    if-lez p1, :cond_61

    .line 1090
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/powervision/gcs/usb2/SonarManager;->receiveContrlData([BI)V

    goto/16 :goto_e

    :cond_4
    :goto_0
    const-string p1, "lzqSonar"

    const-string p2, " SONAR_CTRL \u63a5\u5230  \u9519\u8bef "

    .line 1086
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1061
    :cond_5
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_6

    const-string p1, "lzqSonar_i"

    const-string p2, " SONAR_IMAGE \u63a5\u5230\u5f00\u59cb "

    .line 1062
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object p1

    invoke-virtual {p1, v1, v8}, Lcom/powervision/gcs/usb2/SonarManager;->receiveImagePatket([BI)V

    goto/16 :goto_e

    .line 1064
    :cond_6
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_7

    const-string p1, "lzqSonar_i"

    const-string p2, "SONAR_IMAGE \u63a5\u5230Cancel "

    .line 1065
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Lcom/powervision/gcs/usb2/SonarManager;->receiveImagePatket([BI)V

    goto/16 :goto_e

    .line 1067
    :cond_7
    aget-byte p1, p3, v9

    if-eq p1, v3, :cond_61

    aget-byte p1, p3, v9

    if-ne p1, v7, :cond_8

    goto/16 :goto_e

    :cond_8
    if-eqz p2, :cond_61

    .line 1072
    array-length p1, p2

    if-lez p1, :cond_61

    .line 1073
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/powervision/gcs/usb2/SonarManager;->receiveImagePatket([BI)V

    goto/16 :goto_e

    .line 1242
    :cond_9
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_a

    const-string p1, "DL01_REMOTE_FTP_CON \u63a5\u5230START "

    .line 1243
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2b0d

    invoke-direct {p2, p3, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1245
    :cond_a
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_b

    const-string p1, "DL01_REMOTE_FTP_CON \u63a5\u5230CANCEL "

    .line 1246
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2b0d

    invoke-direct {p2, p3, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1248
    :cond_b
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_61

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_c

    goto/16 :goto_e

    :cond_c
    const-string p1, "DL01_REMOTE_FTP_CON \u63a5\u5230\u6570\u636e "

    .line 1251
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    const/16 v0, 0x2b0d

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1257
    :cond_d
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_e

    const-string p1, "DL01_REMOTE_FTP_DATA \u63a5\u5230START "

    .line 1258
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2b0c

    invoke-direct {p2, p3, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1260
    :cond_e
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_f

    const-string p1, "DL01_REMOTE_FTP_DATA \u63a5\u5230CANCEL "

    .line 1261
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2b0c

    invoke-direct {p2, p3, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1263
    :cond_f
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_61

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_10

    goto/16 :goto_e

    :cond_10
    const-string p1, "DL01_REMOTE_FTP_DATA \u63a5\u5230\u6570\u636e "

    .line 1266
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    const/16 v0, 0x2b0c

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1312
    :cond_11
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_12

    const-string p1, "\u7aef\u53e3 \u56de\u590d \u8fde\u63a5\u6210\u529f  DL01_GROUND "

    .line 1313
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2aa3

    invoke-direct {p2, p3, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1315
    :cond_12
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_13

    .line 1316
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2aa3

    invoke-direct {p2, p3, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1317
    :cond_13
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_61

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_14

    goto/16 :goto_e

    .line 1320
    :cond_14
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    const/16 v0, 0x2aa3

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1298
    :cond_15
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_16

    const-string p1, "lzqnofly"

    const-string p2, "\u7aef\u53e3 \u6536\u5230 \u8fde\u63a5\u6210\u529f  NO_FLY_ZONE "

    .line 1299
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2aa2

    invoke-direct {p2, p3, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1301
    :cond_16
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_17

    const-string p1, "lzqnofly"

    const-string p2, "\u7aef\u53e3 \u6536\u5230 \u65ad\u5f00  NO_FLY_ZONE "

    .line 1302
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2aa2

    invoke-direct {p2, p3, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1304
    :cond_17
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_61

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_18

    goto/16 :goto_e

    :cond_18
    const-string p1, "lzqnofly"

    const-string p3, " NO_FLY_ZONE \u6536\u5230\u6570\u636e "

    .line 1307
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    const/16 v0, 0x2aa2

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1284
    :cond_19
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_1a

    const-string p1, "\u7aef\u53e3 \u56de\u590d \u8fde\u63a5\u6210\u529f  DL01_GROUND "

    .line 1285
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2a89

    invoke-direct {p2, p3, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1287
    :cond_1a
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_1b

    .line 1288
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2a89

    invoke-direct {p2, p3, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1289
    :cond_1b
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_61

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_1c

    goto/16 :goto_e

    .line 1292
    :cond_1c
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    const/16 v0, 0x2a89

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1271
    :cond_1d
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_1e

    .line 1273
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2a88

    invoke-direct {p2, p3, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1274
    :cond_1e
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_1f

    .line 1275
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x2a88

    invoke-direct {p2, p3, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1276
    :cond_1f
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_61

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_20

    goto/16 :goto_e

    .line 1279
    :cond_20
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    const/16 v0, 0x2a88

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1226
    :cond_21
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_22

    const-string p1, " BODY_DATA \u63a5\u5230Start "

    .line 1227
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x29ab

    invoke-direct {p2, p3, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1229
    :cond_22
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_23

    const-string p1, " BODY_DATA \u63a5\u5230Cancel "

    .line 1230
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x29ab

    invoke-direct {p2, p3, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1232
    :cond_23
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_25

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_24

    goto :goto_1

    .line 1236
    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BODY_DATA  \u63a5\u6536\u5230\u6b63\u5e38\u6570\u636e  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    const/16 v0, 0x29ab

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    :cond_25
    :goto_1
    const-string p1, "BODY_DATA  FAILED  "

    .line 1233
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1211
    :cond_26
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_27

    const-string p1, "BODY_CONTRL  \u63a5\u6536  START "

    .line 1212
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x29aa

    invoke-direct {p2, p3, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1214
    :cond_27
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_28

    const-string p1, "BODY_CONTRL  \u63a5\u6536 CANCEL "

    .line 1215
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/16 p3, 0x29aa

    invoke-direct {p2, p3, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1217
    :cond_28
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_2a

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_29

    goto :goto_2

    .line 1220
    :cond_29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BODY_CONTRL  \u63a5\u6536\u5230\u6b63\u5e38\u6570\u636e  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    const/16 v0, 0x29aa

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    :cond_2a
    :goto_2
    const-string p1, "BODY_CONTRL  FAILED  "

    .line 1218
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1359
    :cond_2b
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_2c

    const-string p1, "lzqAudio"

    const-string p2, "\u7aef\u53e3 \u56de\u590d \u6536\u5230 START   "

    .line 1360
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1362
    :cond_2c
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_2d

    const-string p1, "lzqAudio"

    const-string p2, "\u7aef\u53e3 \u56de\u590d \u6536\u5230  CANCEL "

    .line 1363
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1365
    :cond_2d
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_61

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_2e

    goto/16 :goto_e

    .line 1368
    :cond_2e
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1165
    :cond_2f
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_30

    const-string p1, "lzqrtsp"

    const-string p2, "  \u63a5\u5230\u77f3\u6770\u7684START"

    .line 1166
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object p1

    invoke-virtual {p1, v1, v8}, Lcom/powervision/gcs/usb2/RtspUsbManager;->addAPacket([BI)V

    goto :goto_4

    .line 1168
    :cond_30
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_31

    const-string p1, "lzqrtsp"

    const-string p2, "  \u63a5\u5230\u77f3\u6770\u7684CANCEL"

    .line 1169
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Lcom/powervision/gcs/usb2/RtspUsbManager;->addAPacket([BI)V

    goto :goto_4

    .line 1171
    :cond_31
    aget-byte p1, p3, v9

    if-eq p1, v3, :cond_33

    aget-byte p1, p3, v9

    if-ne p1, v7, :cond_32

    goto :goto_3

    .line 1177
    :cond_32
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/powervision/gcs/usb2/RtspUsbManager;->addAPacket([BI)V

    goto :goto_4

    .line 1172
    :cond_33
    :goto_3
    invoke-static {}, Lcom/powervision/gcs/usb2/RtspUsbManager;->get()Lcom/powervision/gcs/usb2/RtspUsbManager;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, v1, p2}, Lcom/powervision/gcs/usb2/RtspUsbManager;->addAPacket([BI)V

    .line 1181
    :goto_4
    iget-wide p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->ww:J

    const-wide/16 v0, 0xc8

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_34

    .line 1182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8fd8\u901a\u7740 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->ww:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "lzqrtsp"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_34
    iget-wide p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->ww:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->ww:J

    goto/16 :goto_e

    .line 1344
    :cond_35
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_36

    const-string p1, "AP03_UPGRADER_DATA \u6536\u5230 START   "

    .line 1345
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1347
    :cond_36
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_37

    const-string p1, "  AP03_UPGRADER_DATA \u6536\u5230 CANCEL "

    .line 1348
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1351
    :cond_37
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_39

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_38

    goto :goto_5

    .line 1355
    :cond_38
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    :cond_39
    :goto_5
    const-string p1, "AP03_UPGRADER_DATA \u6536\u5230 FAILED   "

    .line 1352
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1326
    :cond_3a
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_3b

    const-string p1, "  AP03_UPGRADER_COMMAND \u6536\u5230 START "

    .line 1327
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1329
    :cond_3b
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_3c

    const-string p1, "  AP03_UPGRADER_COMMAND \u6536\u5230 CANCEL "

    .line 1330
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1333
    :cond_3c
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_3e

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_3d

    goto :goto_6

    .line 1339
    :cond_3d
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    :cond_3e
    :goto_6
    const-string p1, "AP03_UPGRADER_COMMAND \u6536\u5230 FAILED   "

    .line 1334
    invoke-static {v11, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/4 p3, 0x3

    invoke-direct {p2, v0, v1, p3}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1115
    :cond_3f
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_40

    const-string p1, "lzqw4_dl01_a"

    const-string p2, "\u7aef\u53e3 \u56de\u590d START  DL01_GROUND "

    .line 1116
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1118
    :cond_40
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_41

    const-string p1, "lzqw4_dl01_a"

    const-string p2, "\u7aef\u53e3 \u56de\u590d CANCEL  DL01_GROUND "

    .line 1119
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1121
    :cond_41
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_43

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_42

    goto :goto_7

    .line 1125
    :cond_42
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    :cond_43
    :goto_7
    const-string p1, "lzqw4_dl01_a"

    const-string p2, "\u7aef\u53e3 \u56de\u590d FAILED  DL01_GROUND "

    .line 1122
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1098
    :cond_44
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_45

    const-string p1, "lzqw4_body"

    const-string p2, " \u63a5\u5230 start "

    .line 1099
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto :goto_9

    .line 1101
    :cond_45
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_46

    const-string p1, "lzqw4_body"

    const-string p2, " \u63a5\u5230 Cancel "

    .line 1102
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto :goto_9

    .line 1104
    :cond_46
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_48

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_47

    goto :goto_8

    .line 1110
    :cond_47
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto :goto_9

    :cond_48
    :goto_8
    const-string p1, "lzqw4_body"

    const-string p2, " \u63a5\u5230 failed "

    .line 1105
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    const/4 p3, 0x3

    invoke-direct {p2, v0, v1, p3}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    .line 1112
    :goto_9
    iget p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->uu:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->uu:I

    goto/16 :goto_e

    .line 1129
    :cond_49
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_4a

    const-string p1, " \u7aef\u53e3 \u56de\u590d \u63a5\u5230Start  DL01_GROUND "

    .line 1130
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1132
    :cond_4a
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_4b

    const-string p1, "\u7aef\u53e3 \u56de\u590d \u63a5\u5230Cancel  DL01_GROUND "

    .line 1133
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1135
    :cond_4b
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_4d

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_4c

    goto :goto_a

    .line 1139
    :cond_4c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u63a5\u5230\u6570\u636e "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "lzqDDD"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    :cond_4d
    :goto_a
    const-string p1, "\u7aef\u53e3 \u56de\u590d \u8fde\u63a5\u5931\u8d25  DL01_GROUND "

    .line 1136
    invoke-static {v10, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1148
    :cond_4e
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_4f

    const-string p1, "lzqRemote"

    const-string p2, "\u7aef\u53e3 \u56de\u590d \u5feb\u5f00\u6210\u529f  REMOTE "

    .line 1149
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1151
    :cond_4f
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_50

    const-string p1, "lzqRemote"

    const-string p2, "\u7aef\u53e3 \u56de\u590d \u8fde\u63a5\u6210\u529f  REMOTE "

    .line 1152
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1154
    :cond_50
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_61

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_51

    goto/16 :goto_e

    .line 1156
    :cond_51
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto/16 :goto_e

    .line 1372
    :cond_52
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_53

    const-string p1, "lzqAudio"

    const-string p2, "\u7aef\u53e3 \u56de\u590d \u6536\u5230 START   "

    .line 1373
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-static {}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->receiveStart()V

    goto/16 :goto_e

    .line 1375
    :cond_53
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_54

    const-string p1, "lzqAudio"

    const-string p2, "\u7aef\u53e3 \u56de\u590d \u6536\u5230  CANCEL "

    .line 1376
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-static {}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->receiveCancel()V

    goto/16 :goto_e

    .line 1378
    :cond_54
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_61

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_55

    goto/16 :goto_e

    .line 1381
    :cond_55
    invoke-static {}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->get()Lcom/powervision/gcs/usb2/CameraInfoUsbManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/CameraInfoUsbManager;->receiveNormal([B)V

    goto/16 :goto_e

    .line 1189
    :cond_56
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_57

    const-string p1, "lzqAp03"

    const-string p2, " \u63a5\u5230 start "

    .line 1190
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v8}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto :goto_c

    .line 1192
    :cond_57
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_58

    const-string p1, "lzqAp03"

    const-string p2, " \u63a5\u5230 cancel "

    .line 1193
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p2, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p2, v0, v1, v4}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto :goto_c

    .line 1195
    :cond_58
    aget-byte p1, p3, v9

    if-eq p1, v7, :cond_5a

    aget-byte p1, p3, v9

    if-ne p1, v3, :cond_59

    goto :goto_b

    .line 1201
    :cond_59
    invoke-static {}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->get()Lcom/powervision/gcs/usb2/AOAPowerSdkManager;

    move-result-object p1

    new-instance p3, Lcom/powervision/gcs/usb2/Msg;

    invoke-direct {p3, v0, p2, v2}, Lcom/powervision/gcs/usb2/Msg;-><init>(I[BI)V

    invoke-virtual {p1, p3}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->addAPacket(Lcom/powervision/gcs/usb2/Msg;)V

    goto :goto_c

    :cond_5a
    :goto_b
    const-string p1, "lzqAp03"

    const-string p2, " \u63a5\u5230 FAILED "

    .line 1197
    invoke-static {p1, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :goto_c
    iget-wide p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->ii:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->ii:J

    goto :goto_e

    :cond_5b
    const-string p1, " 81 \u63a5\u6536\u5230\u6570\u636e"

    .line 1207
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1039
    :cond_5c
    aget-byte p1, p3, v9

    if-ne p1, v6, :cond_5d

    const-string p1, "\u63a5\u6536\u5230Cancel "

    .line 1040
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object p1

    invoke-virtual {p1, p2, v4}, Lcom/powervision/gcs/usb2/HttpUsbManager;->receivePacket([BI)V

    goto :goto_e

    .line 1042
    :cond_5d
    aget-byte p1, p3, v9

    if-ne p1, v5, :cond_5e

    const-string p1, "\u63a5\u6536\u5230Start "

    .line 1043
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->wwwww:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->wwwww:I

    goto :goto_e

    .line 1051
    :cond_5e
    aget-byte p1, p3, v9

    if-eq p1, v3, :cond_60

    aget-byte p1, p3, v9

    if-ne p1, v7, :cond_5f

    goto :goto_d

    .line 1055
    :cond_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u63a5\u6536\u5230DATA: 2--head--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p3, p3, v9

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "---"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-static {}, Lcom/powervision/gcs/usb2/HttpUsbManager;->getInstance()Lcom/powervision/gcs/usb2/HttpUsbManager;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lcom/powervision/gcs/usb2/HttpUsbManager;->receivePacket([BI)V

    goto :goto_e

    :cond_60
    :goto_d
    const-string p1, "\u63a5\u6536\u5230\u5931\u8d25 1111: 3"

    .line 1052
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    :goto_e
    return v8
.end method


# virtual methods
.method public destory()V
    .locals 4

    .line 884
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$800(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->setCommunicateListener(Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;)V

    .line 886
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iput-object v2, v1, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    .line 888
    iget-boolean v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->needRestart:Z

    if-eqz v1, :cond_0

    .line 889
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    new-instance v3, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    invoke-direct {v3, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;-><init>(Lcom/powervision/gcs/usb2/GcsUsbManager$1;)V

    iput-object v3, v1, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    .line 890
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicationThread:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;

    iget-object v3, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v3, v3, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    invoke-virtual {v1, v3}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicationThread;->setCommunicateListener(Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;)V

    .line 891
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v1, v1, Lcom/powervision/gcs/usb2/GcsUsbManager;->communicateListener:Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;

    invoke-interface {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager$CommunicateListener;->setNeedDestory()V

    .line 894
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 896
    :try_start_1
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$900(Lcom/powervision/gcs/usb2/GcsUsbManager;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "lzqUsb"

    const-string v1, "\u5173\u4e86\u6587\u4ef6\u63cf\u8ff0\u7b26"

    .line 897
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$900(Lcom/powervision/gcs/usb2/GcsUsbManager;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$1000(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 903
    :try_start_2
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$1100(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileInputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "lzqUsb"

    const-string v3, "in close"

    .line 904
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$1100(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 906
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$1102(Lcom/powervision/gcs/usb2/GcsUsbManager;Ljava/io/FileInputStream;)Ljava/io/FileInputStream;

    .line 908
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 909
    :try_start_3
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$600(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 910
    :try_start_4
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$700(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "lzqUsb"

    const-string v3, "out close"

    .line 911
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$700(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 913
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1, v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$702(Lcom/powervision/gcs/usb2/GcsUsbManager;Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;

    .line 915
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v1

    .line 908
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 920
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->lastIsIn:Z

    .line 921
    invoke-static {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUsbMounted(Z)V

    .line 922
    invoke-static {v1}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->setUSB2_CONFIRM(Z)V

    const-string v0, "lzqFirm"

    const-string v1, "usb out"

    .line 925
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_onUsb2Disconnected()V

    .line 927
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_onUsbOut()V

    return-void

    :catchall_2
    move-exception v1

    .line 894
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public onMsg(Ljava/lang/String;)V
    .locals 1

    .line 1438
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    iget-object v0, v0, Lcom/powervision/gcs/usb2/GcsUsbManager;->listener:Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;

    invoke-interface {v0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager$onMsgListener;->onMsg(Ljava/lang/String;)V

    return-void
.end method

.method public paserAGoodMsg([B)V
    .locals 2

    .line 946
    array-length v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 947
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->lastTemp:[B

    const-string p1, "lzqHttp"

    const-string v0, "lastTemp-----length"

    .line 948
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 950
    :cond_0
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->paserNormal([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->lastTemp:[B

    :goto_0
    return-void
.end method

.method public paserMsg([B)V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->lastTemp:[B

    if-eqz v0, :cond_0

    .line 936
    invoke-static {v0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 937
    iput-object v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->lastTemp:[B

    .line 939
    :cond_0
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->paserAGoodMsg([B)V

    return-void
.end method

.method public paserNormal([B)[B
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    add-int/lit8 v2, v0, 0x3

    .line 973
    array-length v4, p1

    sub-int/2addr v4, v1

    const-string v5, "lzqUsb"

    if-le v2, v4, :cond_0

    const-string p1, "\u662f\u4e2a\u9519\u5305 "

    .line 974
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_Error()V

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v4, v0, 0x0

    .line 979
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    add-int/lit8 v6, v0, 0x2

    .line 982
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v6

    const/16 v6, 0xa

    if-nez v2, :cond_1

    .line 985
    array-length v7, p1

    if-le v7, v6, :cond_1

    .line 988
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_Error()V

    goto/16 :goto_1

    :cond_1
    add-int v7, v0, v2

    add-int/2addr v6, v7

    .line 994
    array-length v7, p1

    if-le v6, v7, :cond_2

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u662f\u4e2a\u65ad\u5305  contentLength: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  msg.len =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " port :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-static {p1, v2}, Lcom/powervision/gcs/usb2/AOAPowerSdkManager;->asHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u662f\u4e2a\u65ad\u5305 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_Error()V

    .line 1000
    :try_start_0
    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    const-string p1, "\u662f\u4e2a\u65ad\u5305 \u89e3\u7684\u6709\u95ee\u9898 "

    .line 1002
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v7, v0, 0xa

    .line 1007
    invoke-static {p1, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 1008
    invoke-static {p1, v0, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1010
    invoke-direct {p0, v4, v8, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->ENCODING(I[B[B)Z

    move-result v7

    if-nez v7, :cond_3

    const-string p1, "port\u4e0d\u5bf9 \u8fd9\u6761\u6570\u636e\u6254\u4e86"

    .line 1013
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object p1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-virtual {p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->notify_Error()V

    goto :goto_1

    .line 1021
    :cond_3
    array-length v9, p1

    if-ne v6, v9, :cond_4

    goto :goto_1

    .line 1024
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "head-\u6807\u8bc6---"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x4

    aget-byte v0, v0, v9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---port---"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "lzqHttp"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e00\u4e2a\u5305\u6ca1\u89e3\u5b8c port"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  start: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " contentL:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " len :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cont.len "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    move v2, v7

    goto/16 :goto_0

    :cond_5
    :goto_1
    return-object v3
.end method

.method public setNeedDestory()V
    .locals 1

    const/4 v0, 0x0

    .line 1433
    iput-boolean v0, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->needRestart:Z

    return-void
.end method

.method public setNeedRestart()V
    .locals 0

    return-void
.end method

.method public work()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 1401
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$1100(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileInputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1402
    iget-object v1, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$1000(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1403
    :try_start_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$1100(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileInputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1404
    iget-object v2, p0, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->this$0:Lcom/powervision/gcs/usb2/GcsUsbManager;

    invoke-static {v2}, Lcom/powervision/gcs/usb2/GcsUsbManager;->access$1100(Lcom/powervision/gcs/usb2/GcsUsbManager;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    .line 1409
    invoke-static {v0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1410
    aget-byte v3, v0, v3

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1415
    invoke-virtual {p0, v4}, Lcom/powervision/gcs/usb2/GcsUsbManager$5;->paserMsg([B)V

    goto :goto_1

    :cond_0
    const-string v2, "lzqHttp"

    const-string v3, "in-stream-len---e"

    .line 1417
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v2, "lzqHttp"

    const-string v3, "in-stream-is-Null"

    .line 1420
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method
