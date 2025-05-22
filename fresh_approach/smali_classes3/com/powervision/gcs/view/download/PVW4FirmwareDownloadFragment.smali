.class public Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "PVW4FirmwareDownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;
    }
.end annotation


# static fields
.field public static final PARAM_FILENAME:Ljava/lang/String; = "param_filename"

.field public static final PARAM_ISA:Ljava/lang/String; = "param_isa"

.field public static final PARAM_SIZE:Ljava/lang/String; = "param_size"

.field public static final PARAM_TITLE:Ljava/lang/String; = "param_title"

.field public static final PARAM_TYPE:Ljava/lang/String; = "param_type"

.field public static final PARAM_URL_MD5:Ljava/lang/String; = "param_url_md5"

.field public static final PARAM_relseaNote:Ljava/lang/String; = "param_json"

.field private static final TAG:Ljava/lang/String; = "lzqRc"


# instance fields
.field CONNECT_TIMEOUT:I

.field READ_TIMEOUT:I

.field RETRYRANGE:I

.field TRYCOUNT:I

.field WRITE_TIMEOUT:I

.field baseModelPath:Ljava/lang/String;

.field body_has_download:J

.field canRun:Z

.field content_length:J

.field private device_type:I

.field private down_inofs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;"
        }
    .end annotation
.end field

.field haveDownLoadFileSize:J

.field private isA:Z

.field private isStop:Z

.field llProgress:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0xe81
    .end annotation
.end field

.field mDownloadCall:Lokhttp3/Call;

.field private mSize_long:J

.field private mSize_string:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mZipName:Ljava/lang/String;

.field okHttpClient:Lokhttp3/OkHttpClient;

.field public onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

.field pbProgress:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf06
    .end annotation
.end field

.field private relseaNote:Ljava/lang/String;

.field replace:Ljava/lang/String;

.field sDivider:Landroid/widget/Space;
    .annotation runtime Lbutterknife/BindView;
        value = 0xf96
    .end annotation
.end field

.field tvCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x115c
    .end annotation
.end field

.field tvNote:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x118f
    .end annotation
.end field

.field tvProgressRate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x1191
    .end annotation
.end field

.field tvSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11a4
    .end annotation
.end field

.field tvSure:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11a5
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x11a8
    .end annotation
.end field

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 66
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mSize_long:J

    const/4 v2, 0x0

    .line 119
    iput v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->device_type:I

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->down_inofs:Ljava/util/ArrayList;

    const/16 v3, 0x8

    .line 174
    iput v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->READ_TIMEOUT:I

    .line 175
    iput v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->WRITE_TIMEOUT:I

    .line 176
    iput v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->CONNECT_TIMEOUT:I

    const/4 v3, 0x0

    .line 177
    iput-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mDownloadCall:Lokhttp3/Call;

    const/16 v3, 0xa

    .line 178
    iput v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->RETRYRANGE:I

    .line 179
    iput v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    const-string v3, ""

    .line 180
    iput-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    .line 209
    iput-boolean v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->canRun:Z

    const-wide/16 v4, -0x1

    .line 243
    iput-wide v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->content_length:J

    .line 244
    iput-wide v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->haveDownLoadFileSize:J

    .line 465
    iput-wide v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->body_has_download:J

    .line 873
    iput-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->replace:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->clearNormal(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->device_type:I

    return p0
.end method

.method private clearNormal(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearNormal who: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lzqW4Firm"

    invoke-static {v0, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "/"

    .line 691
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x0

    .line 692
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 694
    invoke-virtual {p0, p1, p2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getNormalLocalItem(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNormalLocalItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 696
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 697
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    :goto_0
    if-ltz v1, :cond_2

    .line 700
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/gcs/manager/W4Firmware;

    .line 701
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p2

    if-eq v1, v3, :cond_0

    const-string v3, "\u5982\u679c\u662f\u975e\u5f3a\u5236\u5347\u7ea7 \u5e76\u4e14\u8fd8\u4e0d\u662f\u6700\u5927\u7684\u5c31\u5220\u6389:"

    .line 703
    invoke-static {v0, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/powervision/gcs/utils/FileUtil;->deleteDir(Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const-string p1, "  getNormalLocalItem \u96c6\u5408\u4e3anull"

    .line 709
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private initData()V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->relseaNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/download/-$$Lambda$PVW4FirmwareDownloadFragment$dLf1aV5dM5ancmbHT0IRAlUZKWg;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/download/-$$Lambda$PVW4FirmwareDownloadFragment$dLf1aV5dM5ancmbHT0IRAlUZKWg;-><init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvSure:Landroid/widget/TextView;

    new-instance v1, Lcom/powervision/gcs/view/download/-$$Lambda$PVW4FirmwareDownloadFragment$kyWbwLyFnRRt1yIoFWzet0OgPOE;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/view/download/-$$Lambda$PVW4FirmwareDownloadFragment$kyWbwLyFnRRt1yIoFWzet0OgPOE;-><init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;
    .locals 3

    .line 125
    new-instance v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;

    invoke-direct {v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;-><init>()V

    .line 126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param_title"

    .line 127
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param_size"

    .line 128
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param_type"

    .line 129
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "param_json"

    .line 133
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param_filename"

    .line 134
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param_isa"

    .line 135
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public clearRemoteDir(Lcom/powervision/gcs/manager/W4Firmware;)V
    .locals 5

    .line 408
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lzqW4_r"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 411
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 415
    :cond_0
    iget-object p1, p1, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    const-string v1, "/"

    .line 416
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  clearRemoteDir :dir_name"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 418
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 419
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  clearRemoteDir :\u5220\u9664"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/powervision/gcs/utils/FileUtil;->deleteDir(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public deleteZip(Ljava/io/File;)V
    .locals 0

    .line 868
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public downLoadBodyComplete()V
    .locals 1

    .line 931
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->checkRemoteForDetail()V

    return-void
.end method

.method public downLoadRemote(Lcom/powervision/gcs/manager/W4Firmware;)V
    .locals 6

    .line 247
    iget-boolean v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->canRun:Z

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p1, Lcom/powervision/gcs/manager/W4Firmware;->download_address:Ljava/lang/String;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    .line 256
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 259
    iput v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    .line 260
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 261
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Range"

    invoke-virtual {v2, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 263
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    const/4 v3, 0x0

    .line 264
    iput-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mDownloadCall:Lokhttp3/Call;

    .line 265
    iget-object v3, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mDownloadCall:Lokhttp3/Call;

    .line 266
    new-instance v3, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$1;-><init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;Ljava/lang/String;Ljava/io/File;Lcom/powervision/gcs/manager/W4Firmware;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public downLoadRemoteComplete()V
    .locals 1

    .line 927
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->checkRemoteForDetail()V

    return-void
.end method

.method public download(Ljava/util/List;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;J)V"
        }
    .end annotation

    .line 469
    iget-boolean v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->canRun:Z

    if-nez v0, :cond_0

    return-void

    .line 472
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "lzqW4Firm"

    if-nez v0, :cond_1

    const-string v0, "\u4e0b\u8f7d\u5b8c\u4e86 \u7ed9\u6240\u6709\u7684\u6587\u4ef6\u91cd\u547d\u540d"

    .line 476
    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 481
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/powervision/gcs/manager/W4Firmware;

    .line 484
    iget-object v2, v9, Lcom/powervision/gcs/manager/W4Firmware;->download_address:Ljava/lang/String;

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    .line 487
    new-instance v6, Ljava/io/File;

    iget-object v3, v9, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " startDown ANewOne :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " startDown \u4e0b\u8f7d\u5230 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iput v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->TRYCOUNT:I

    .line 493
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 494
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const/4 v1, 0x0

    .line 497
    iput-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mDownloadCall:Lokhttp3/Call;

    .line 498
    iget-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mDownloadCall:Lokhttp3/Call;

    .line 499
    new-instance v1, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-wide v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$2;-><init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;Ljava/util/List;Ljava/io/File;JLcom/powervision/gcs/manager/W4Firmware;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_3
    return-void
.end method

.method public findBin([Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x0

    .line 879
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 880
    aget-object v1, p1, v0

    .line 881
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 882
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->findBin([Ljava/io/File;)V

    goto :goto_1

    .line 884
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".bin"

    .line 885
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "._"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 886
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 887
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->replace:Ljava/lang/String;

    .line 888
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 889
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->replace:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->replace:Ljava/lang/String;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public getNormalLocalItem(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c03\u7528getNormalLocalItem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lzqW4Firm"

    invoke-static {v0, p2}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getNormalLocalItem  hardWareTypePatch :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 751
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 753
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 754
    aget-object v3, p1, v2

    .line 755
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0d\u662f\u6587\u4ef6\u5939\u5220\u9664:abs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/powervision/gcs/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 760
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u67e5\u627egetNormalLocalItem:abs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 762
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, " \u6ca1\u6709# \u5220\u9664"

    .line 764
    invoke-static {v0, v4}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-static {v3}, Lcom/powervision/gcs/utils/FileUtil;->deleteDir(Ljava/io/File;)Z

    goto :goto_1

    .line 769
    :cond_1
    new-instance v4, Lcom/powervision/gcs/manager/W4Firmware;

    invoke-direct {v4}, Lcom/powervision/gcs/manager/W4Firmware;-><init>()V

    .line 771
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 772
    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 774
    iput-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    .line 775
    aget-object v6, v5, p2

    iput-object v6, v4, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    const/4 v6, 0x1

    .line 776
    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/powervision/gcs/manager/W4Firmware;->isForce:I

    .line 777
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 779
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 781
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v1
.end method

.method public getOnFirmwareDownloadListener()Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    return-object v0
.end method

.method public synthetic lambda$initListener$0$PVW4FirmwareDownloadFragment(Landroid/view/View;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    if-eqz p1, :cond_0

    .line 214
    invoke-interface {p1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;->onCancel()V

    :cond_0
    const-string p1, "lzqW4Firm"

    const-string v0, "cancel"

    .line 216
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->canRun:Z

    .line 218
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mDownloadCall:Lokhttp3/Call;

    if-eqz p1, :cond_1

    .line 219
    invoke-interface {p1}, Lokhttp3/Call;->cancel()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initListener$1$PVW4FirmwareDownloadFragment(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->canRun:Z

    .line 226
    iget p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->device_type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->down_inofs:Ljava/util/ArrayList;

    iget-wide v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mSize_long:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->download(Ljava/util/List;J)V

    goto :goto_0

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downLoadRemote: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget-object v1, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->remote_download_model:Lcom/powervision/gcs/manager/W4Firmware;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lzqw4_r"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager$State;->getRemote_download_model()Lcom/powervision/gcs/manager/W4Firmware;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->downLoadRemote(Lcom/powervision/gcs/manager/W4Firmware;)V

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvSize:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->llProgress:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->sDivider:Landroid/widget/Space;

    invoke-virtual {p1, v0}, Landroid/widget/Space;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->tvSure:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "lzqW4Firm"

    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 237
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    sget p1, Lcom/powervision/gcs/R$style;->TranslucentNoTitle:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->setStyle(II)V

    const/4 p1, 0x0

    .line 146
    invoke-virtual {p0, p1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->setCancelable(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mTitle:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mSize_string:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mSize_long:J

    .line 151
    invoke-virtual {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->device_type:I

    .line 153
    invoke-virtual {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->relseaNote:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_filename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mZipName:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param_isa"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->isA:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 165
    sget p3, Lcom/powervision/gcs/R$layout;->fragment_firmware_download:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 166
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->unbinder:Lbutterknife/Unbinder;

    .line 167
    invoke-direct {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->initData()V

    .line 168
    invoke-virtual {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->setupDownLoad()V

    .line 169
    invoke-direct {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->initListener()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 809
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 811
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 797
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    const/4 v0, 0x0

    .line 798
    iput-boolean v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->isStop:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 803
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    const/4 v0, 0x1

    .line 804
    iput-boolean v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->isStop:Z

    return-void
.end method

.method public prepare()V
    .locals 5

    .line 432
    iget v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->device_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 434
    :goto_0
    iget-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->down_inofs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->down_inofs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/manager/W4Firmware;

    .line 436
    iget-object v1, v1, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    .line 439
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/powervision/base/utils/W4FirmWareFileUtils;->getFirmWareBodyPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->down_inofs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 450
    iget-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->down_inofs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->sort(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public renameItemDir(Lcom/powervision/gcs/manager/W4Firmware;)V
    .locals 5

    .line 899
    iget-object v0, p1, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 900
    iget-object v1, p1, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 901
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p1, Lcom/powervision/gcs/manager/W4Firmware;->hardware_type:Ljava/lang/String;

    const-string v3, "config"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "lzqW4Firm"

    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 905
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 906
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const-string v1, "\u5220\u6389config\u6587\u4ef6"

    .line 907
    invoke-static {v3, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    aget-object v1, v0, v2

    invoke-static {v1}, Lcom/powervision/gcs/utils/FileUtil;->deleteDir(Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 913
    :cond_1
    iget-object p1, p1, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    .line 914
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#0#1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2
    return-void
.end method

.method public rename_Remote(Lcom/powervision/gcs/manager/W4Firmware;)V
    .locals 6

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rename_Remote oldName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lzqW4_r"

    invoke-static {v4, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rename_Remote newName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/gcs/manager/W4Firmware;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    .line 402
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method public setOnFirmwareDownloadListener(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    return-void
.end method

.method public setupDownLoad()V
    .locals 4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupDownLoad type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->device_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqW4Firm"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->mSize_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->device_type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 188
    invoke-static {}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getInstance()Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/manager/PVW4FirmWareUpdateManager;->getBodyDownLoadinfos()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->down_inofs:Ljava/util/ArrayList;

    .line 189
    invoke-virtual {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->prepare()V

    .line 190
    invoke-static {}, Lcom/powervision/base/utils/W4FirmWareFileUtils;->getFirmWareBodyPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseModelPath : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->isA:Z

    invoke-static {v0}, Lcom/powervision/base/utils/W4FirmWareFileUtils;->getRemoteDownloadPath(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->baseModelPath:Ljava/lang/String;

    .line 198
    :goto_0
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 199
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->READ_TIMEOUT:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->WRITE_TIMEOUT:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->CONNECT_TIMEOUT:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 203
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;)V"
        }
    .end annotation

    .line 676
    new-instance v0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$3;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$3;-><init>(Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public sortFirmVersion(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/gcs/manager/W4Firmware;",
            ">;"
        }
    .end annotation

    .line 716
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 720
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    .line 721
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 724
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v3, v3, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/powervision/gcs/manager/W4Firmware;

    iget-object v5, v5, Lcom/powervision/gcs/manager/W4Firmware;->version:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/powervision/gcs/manager/FirmWareUtils;->firstIsBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 725
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/powervision/gcs/manager/W4Firmware;

    .line 726
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 727
    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public two(F)Ljava/lang/String;
    .locals 3

    .line 937
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p1

    .line 938
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unZipFirware(Lcom/powervision/gcs/manager/W4Firmware;)V
    .locals 3

    const-string v0, "lzqW4_r"

    .line 845
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/powervision/gcs/manager/W4Firmware;->dir_abs:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 849
    :try_start_0
    iget-object p1, p1, Lcom/powervision/gcs/manager/W4Firmware;->file_abs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/powervision/gcs/utils/compress/CompressHelper;->extract(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    if-eqz p1, :cond_0

    .line 851
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    iget v1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->device_type:I

    invoke-interface {p1, v1}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;->onSucceed(I)V

    .line 853
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->downLoadRemoteComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "\u89e3\u538b\u5f02\u5e38"

    .line 857
    invoke-static {v0, v1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 859
    iget-object p1, p0, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->onFirmwareDownloadListener:Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 860
    sget v2, Lcom/powervision/gcs/R$string;->Upgrade_32:I

    invoke-virtual {p0, v2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/powervision/gcs/view/download/PVW4FirmwareDownloadFragment$OnFirmwareDownloadListener;->onFailed(ILjava/lang/String;)V

    :cond_1
    :goto_0
    const-string p1, "\u89e3\u538b\u5b8c\u6210"

    .line 863
    invoke-static {v0, p1}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
