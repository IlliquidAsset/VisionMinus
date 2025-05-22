.class Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;
.super Ljava/lang/Object;
.source "ShipSelfCheckAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

.field final synthetic val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->this$0:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    iput-object p2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 493
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode1Line:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode2Line:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode3Line:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode4Line:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode4Line:Landroid/view/View;

    iget-object v2, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->this$0:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;

    invoke-static {v2}, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;->access$500(Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/R$color;->color_camera_set:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 499
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode1Detail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 500
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode2Detail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 501
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode3Detail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$4;->val$finalRemoteHolder:Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;

    iget-object p1, p1, Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$RemoteChildHolder;->shipRemoteRockMode4Detail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
