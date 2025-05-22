.class Lcom/powervision/localhttp/PVW4DownloadHelper$PVW4DownloadHelperHolder;
.super Ljava/lang/Object;
.source "PVW4DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/localhttp/PVW4DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PVW4DownloadHelperHolder"
.end annotation


# static fields
.field private static holder:Lcom/powervision/localhttp/PVW4DownloadHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/powervision/localhttp/PVW4DownloadHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadHelper;-><init>(Lcom/powervision/localhttp/PVW4DownloadHelper$1;)V

    sput-object v0, Lcom/powervision/localhttp/PVW4DownloadHelper$PVW4DownloadHelperHolder;->holder:Lcom/powervision/localhttp/PVW4DownloadHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/powervision/localhttp/PVW4DownloadHelper;
    .locals 1

    .line 24
    sget-object v0, Lcom/powervision/localhttp/PVW4DownloadHelper$PVW4DownloadHelperHolder;->holder:Lcom/powervision/localhttp/PVW4DownloadHelper;

    return-object v0
.end method
