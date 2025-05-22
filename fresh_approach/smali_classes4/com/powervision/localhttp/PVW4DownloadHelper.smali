.class public Lcom/powervision/localhttp/PVW4DownloadHelper;
.super Ljava/lang/Object;
.source "PVW4DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/localhttp/PVW4DownloadHelper$PVW4DownloadHelperHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Application;

.field private mDelivery:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadHelper;->mDelivery:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/localhttp/PVW4DownloadHelper$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/powervision/localhttp/PVW4DownloadHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/localhttp/PVW4DownloadHelper;
    .locals 1

    .line 29
    invoke-static {}, Lcom/powervision/localhttp/PVW4DownloadHelper$PVW4DownloadHelperHolder;->access$100()Lcom/powervision/localhttp/PVW4DownloadHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadHelper;->context:Landroid/app/Application;

    return-object v0
.end method

.method public getDelivery()Landroid/os/Handler;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/powervision/localhttp/PVW4DownloadHelper;->mDelivery:Landroid/os/Handler;

    return-object v0
.end method

.method public init(Landroid/app/Application;)Lcom/powervision/localhttp/PVW4DownloadHelper;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/powervision/localhttp/PVW4DownloadHelper;->context:Landroid/app/Application;

    return-object p0
.end method
