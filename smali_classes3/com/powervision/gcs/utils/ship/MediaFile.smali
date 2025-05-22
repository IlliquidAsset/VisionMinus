.class public Lcom/powervision/gcs/utils/ship/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x24

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x24

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/ship/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/powervision/gcs/utils/ship/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    .line 118
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPGA"

    .line 119
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v2, "audio/mp4"

    .line 120
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    .line 121
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    .line 122
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    .line 123
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    .line 124
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OGG"

    const/4 v1, 0x7

    const-string v2, "audio/ogg"

    .line 125
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "application/ogg"

    .line 126
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OGA"

    .line 127
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac"

    .line 128
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "audio/aac-adts"

    .line 129
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MKA"

    const/16 v1, 0x9

    const-string v2, "audio/x-matroska"

    .line 130
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MID"

    const/16 v1, 0xb

    const-string v2, "audio/midi"

    .line 132
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MIDI"

    .line 133
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "XMF"

    .line 134
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTTTL"

    .line 135
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "SMF"

    const/16 v3, 0xc

    const-string v4, "audio/sp-midi"

    .line 136
    invoke-static {v0, v3, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "IMY"

    const/16 v3, 0xd

    const-string v4, "audio/imelody"

    .line 137
    invoke-static {v0, v3, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTX"

    .line 138
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OTA"

    .line 139
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MXMF"

    .line 140
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPEG"

    const/16 v1, 0x15

    const-string v2, "video/mpeg"

    .line 142
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "MPG"

    .line 143
    invoke-static {v3, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "MP4"

    const-string v4, "video/mp4"

    .line 144
    invoke-static {v2, v1, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "M4V"

    const/16 v2, 0x16

    .line 145
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "3GP"

    const/16 v2, 0x17

    const-string v4, "video/3gpp"

    .line 146
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "3GPP"

    .line 147
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "3G2"

    const/16 v2, 0x18

    const-string v4, "video/3gpp2"

    .line 148
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "3GPP2"

    .line 149
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "MKV"

    const/16 v2, 0x1b

    const-string v4, "video/x-matroska"

    .line 150
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "WEBM"

    const/16 v2, 0x1e

    const-string v4, "video/webm"

    .line 151
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "TS"

    const/16 v2, 0x1c

    const-string v4, "video/mp2ts"

    .line 152
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "AVI"

    const/16 v2, 0x1d

    const-string v4, "video/avi"

    .line 153
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "WMV"

    const/16 v2, 0x19

    const-string v4, "video/x-ms-wmv"

    .line 154
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "ASF"

    const/16 v2, 0x1a

    const-string v4, "video/x-ms-asf"

    .line 155
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "JPG"

    const/16 v2, 0x1f

    const-string v4, "image/jpeg"

    .line 157
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "JPEG"

    .line 158
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "GIF"

    const/16 v2, 0x20

    const-string v4, "image/gif"

    .line 159
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "PNG"

    const/16 v2, 0x21

    const-string v4, "image/png"

    .line 160
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "BMP"

    const/16 v2, 0x22

    const-string v4, "image/x-ms-bmp"

    .line 161
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "WBMP"

    const/16 v2, 0x23

    const-string v4, "image/vnd.wap.wbmp"

    .line 162
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "WEBP"

    const/16 v2, 0x24

    const-string v4, "image/webp"

    .line 163
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "M3U"

    const/16 v2, 0x29

    const-string v4, "audio/x-mpegurl"

    .line 165
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "M3U"

    const-string v4, "application/x-mpegurl"

    .line 166
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "PLS"

    const/16 v2, 0x2a

    const-string v4, "audio/x-scpls"

    .line 167
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "WPL"

    const/16 v2, 0x2b

    const-string v4, "application/vnd.ms-wpl"

    .line 168
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "M3U8"

    const/16 v2, 0x2c

    const-string v4, "application/vnd.apple.mpegurl"

    .line 169
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "audio/mpegurl"

    .line 170
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "audio/x-mpegurl"

    .line 171
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "FL"

    const/16 v2, 0x33

    const-string v4, "application/x-android-drm-fl"

    .line 172
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "TXT"

    const/16 v2, 0x64

    const-string v4, "text/plain"

    .line 174
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "HTM"

    const/16 v2, 0x65

    const-string v4, "text/html"

    .line 175
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "HTML"

    const-string v4, "text/html"

    .line 176
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "PDF"

    const/16 v2, 0x66

    const-string v4, "application/pdf"

    .line 177
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "DOC"

    const/16 v2, 0x68

    const-string v4, "application/msword"

    .line 178
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "XLS"

    const/16 v2, 0x69

    const-string v4, "application/vnd.ms-excel"

    .line 179
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "PPT"

    const/16 v2, 0x6a

    const-string v4, "application/mspowerpoint"

    .line 180
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "FLAC"

    const/16 v2, 0xa

    const-string v4, "audio/flac"

    .line 181
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "ZIP"

    const/16 v2, 0x6b

    const-string v4, "application/zip"

    .line 182
    invoke-static {v1, v2, v4}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc8

    const-string v2, "video/mp2p"

    .line 183
    invoke-static {v3, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "video/mp2p"

    .line 184
    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/utils/ship/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 114
    sget-object v0, Lcom/powervision/gcs/utils/ship/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object p0, Lcom/powervision/gcs/utils/ship/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;
    .locals 2

    const/16 v0, 0x2e

    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 250
    :cond_0
    sget-object v1, Lcom/powervision/gcs/utils/ship/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;

    return-object p0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 1

    .line 293
    sget-object v0, Lcom/powervision/gcs/utils/ship/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 303
    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->getFileType(Ljava/lang/String;)Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 304
    :cond_0
    iget-object p0, p0, Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static isAudioFileType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0xb

    if-lt p0, v1, :cond_1

    const/16 v1, 0xd

    if-gt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isAudioFileType(Ljava/lang/String;)Z
    .locals 0

    .line 321
    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->getFileType(Ljava/lang/String;)Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 326
    iget p0, p0, Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;->fileType:I

    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->isAudioFileType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDrmFileType(I)Z
    .locals 1

    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImageFileType(I)Z
    .locals 1

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x24

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImageFileType(Ljava/lang/String;)Z
    .locals 0

    .line 330
    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->getFileType(Ljava/lang/String;)Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 331
    iget p0, p0, Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;->fileType:I

    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->isImageFileType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 1

    .line 259
    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result p0

    .line 260
    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->isPlayListFileType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1

    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2c

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoFileType(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_2

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoFileType(Ljava/lang/String;)Z
    .locals 0

    .line 311
    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->getFileType(Ljava/lang/String;)Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 316
    iget p0, p0, Lcom/powervision/gcs/utils/ship/MediaFile$MediaFileType;->fileType:I

    invoke-static {p0}, Lcom/powervision/gcs/utils/ship/MediaFile;->isVideoFileType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
