.class public final synthetic Lcom/powervision/localhttp/-$$Lambda$fzeRq3zcGjnPhbAxXKTEGRG_rE4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/localhttp/PVW4DownloadAOAUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/localhttp/-$$Lambda$fzeRq3zcGjnPhbAxXKTEGRG_rE4;->f$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/localhttp/-$$Lambda$fzeRq3zcGjnPhbAxXKTEGRG_rE4;->f$0:Lcom/powervision/localhttp/PVW4DownloadAOAUtils;

    invoke-virtual {v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->handleDownloadMessageSuccess()V

    return-void
.end method
