.class public interface abstract Lcom/powervision/media/ui/view/IMediaLibView;
.super Ljava/lang/Object;
.source "IMediaLibView.java"

# interfaces
.implements Lcom/powervision/media/ui/view/IMediaView;


# virtual methods
.method public abstract getHadSelectData()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/powervision/localhttp/entity/MediaLib;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notifyAdapter(Lcom/powervision/localhttp/entity/MediaLib;I)V
.end method

.method public abstract notifyData()V
.end method
