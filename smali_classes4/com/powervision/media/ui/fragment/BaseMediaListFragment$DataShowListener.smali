.class public interface abstract Lcom/powervision/media/ui/fragment/BaseMediaListFragment$DataShowListener;
.super Ljava/lang/Object;
.source "BaseMediaListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/fragment/BaseMediaListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataShowListener"
.end annotation


# virtual methods
.method public abstract InflateTheImage(Lcom/powervision/base/model/MediaModel;Landroid/widget/ImageView;)V
.end method

.method public abstract onClick(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/powervision/base/model/MediaModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reSetTheGroupCheck(Ljava/lang/String;IZ)V
.end method

.method public abstract showPopUp()V
.end method
