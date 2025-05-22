.class public final synthetic Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$fuZ5H3F2ulXNtnRdAY0OMtejpNU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$fuZ5H3F2ulXNtnRdAY0OMtejpNU;->f$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;

    iput p2, p0, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$fuZ5H3F2ulXNtnRdAY0OMtejpNU;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$fuZ5H3F2ulXNtnRdAY0OMtejpNU;->f$0:Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;

    iget v1, p0, Lcom/powervision/localhttp/-$$Lambda$PVW4DownloadHttpUtils$1$fuZ5H3F2ulXNtnRdAY0OMtejpNU;->f$1:F

    invoke-virtual {v0, v1}, Lcom/powervision/localhttp/PVW4DownloadHttpUtils$1;->lambda$onResponse$2$PVW4DownloadHttpUtils$1(F)V

    return-void
.end method
