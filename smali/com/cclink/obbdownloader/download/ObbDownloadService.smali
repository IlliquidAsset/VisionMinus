.class public Lcom/cclink/obbdownloader/download/ObbDownloadService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.source "ObbDownloadService.java"


# static fields
.field public static BASE64_PUBLIC_KEY:Ljava/lang/String;

.field public static SALT:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 1

    .line 57
    const-class v0, Lcom/cclink/obbdownloader/download/ObbDownloadReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/cclink/obbdownloader/download/ObbDownloadService;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public getSALT()[B
    .locals 1

    .line 47
    sget-object v0, Lcom/cclink/obbdownloader/download/ObbDownloadService;->SALT:[B

    return-object v0
.end method
