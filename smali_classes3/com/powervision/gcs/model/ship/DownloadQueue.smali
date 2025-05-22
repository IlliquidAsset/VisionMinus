.class public Lcom/powervision/gcs/model/ship/DownloadQueue;
.super Ljava/lang/Object;
.source "DownloadQueue.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "gcs_download_queue"
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
    .end annotation
.end field

.field public tag:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "tag"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
