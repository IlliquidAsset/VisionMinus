.class public final synthetic Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$1$PHocLCbHS6Jtdg6koyNIJcvEnhc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;

.field public final synthetic f$1:Lcom/powervision/localhttp/entity/MediaLib;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;Lcom/powervision/localhttp/entity/MediaLib;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$1$PHocLCbHS6Jtdg6koyNIJcvEnhc;->f$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;

    iput-object p2, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$1$PHocLCbHS6Jtdg6koyNIJcvEnhc;->f$1:Lcom/powervision/localhttp/entity/MediaLib;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$1$PHocLCbHS6Jtdg6koyNIJcvEnhc;->f$0:Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;

    iget-object v1, p0, Lcom/powervision/media/ui/adapter/-$$Lambda$MediaLibListAdapter$1$PHocLCbHS6Jtdg6koyNIJcvEnhc;->f$1:Lcom/powervision/localhttp/entity/MediaLib;

    invoke-virtual {v0, v1}, Lcom/powervision/media/ui/adapter/MediaLibListAdapter$1;->lambda$downloadSuccess$0$MediaLibListAdapter$1(Lcom/powervision/localhttp/entity/MediaLib;)V

    return-void
.end method
