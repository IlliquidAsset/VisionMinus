.class public interface abstract Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter$AdapterListener;
.super Ljava/lang/Object;
.source "AOAShipFragmentMediaManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipFragmentMediaManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdapterListener"
.end annotation


# virtual methods
.method public abstract onCancelSelectAll()V
.end method

.method public abstract onClickListener(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
.end method

.method public abstract onLoadMore()V
.end method

.method public abstract onSelectAll()V
.end method

.method public abstract onSelectedChanged(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/powervision/gcs/model/ship/ShipMediaImageModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUnselectAll()V
.end method
