.class Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$2;
.super Ljava/lang/Object;
.source "ShipMediaVideoFragment.java"

# interfaces
.implements Lcom/powervision/gcs/adapter/ship/ShipFragmentMediaAdapter$AdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->processLogic(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Lcom/powervision/gcs/model/ship/ShipMediaImageModel;)V
    .locals 3

    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-virtual {v1}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/powervision/gcs/ui/aty/ship/ShipVideoPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "json"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onLoadMore()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$2;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;

    invoke-static {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;->access$300(Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment;)Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipMediaVideoFragment$ShipMediaVideoHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
