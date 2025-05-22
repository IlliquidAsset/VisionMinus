.class Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$2;
.super Ljava/lang/Object;
.source "ShipMediaImageFragment.java"

# interfaces
.implements Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->processLogic(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V

    return-void
.end method

.method public onLoadMore()V
    .locals 4

    const-string v0, "ShipMediaImageFragment"

    const-string v1, "onLoadMore: "

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaImageFragment$ShipMediaImageHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
