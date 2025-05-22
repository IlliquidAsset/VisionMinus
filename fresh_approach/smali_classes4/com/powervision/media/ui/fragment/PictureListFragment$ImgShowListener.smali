.class interface abstract Lcom/powervision/media/ui/fragment/PictureListFragment$ImgShowListener;
.super Ljava/lang/Object;
.source "PictureListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/ui/fragment/PictureListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ImgShowListener"
.end annotation


# virtual methods
.method public abstract InflateTheImage(Ljava/lang/String;Landroid/widget/ImageView;)V
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

.method public abstract reSetTheGroupCheckBox(Ljava/lang/String;IZ)V
.end method

.method public abstract reSetTheImageCheckBox(Ljava/lang/String;IZ)V
.end method

.method public abstract showPopUp()V
.end method
