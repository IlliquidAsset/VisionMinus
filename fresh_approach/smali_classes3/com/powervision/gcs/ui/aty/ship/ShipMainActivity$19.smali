.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/gcs/adapter/ship/ShipInterestAdapter$IInterestEditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->onQueryInterest(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$interestListWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 2888
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->val$interestListWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterestDeleteAndEdit(ILcom/powervision/gcs/model/ship/ShipInterestModel;)V
    .locals 12

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2892
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->val$interestListWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2893
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4602(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/gcs/model/ship/ShipInterestModel;)Lcom/powervision/gcs/model/ship/ShipInterestModel;

    .line 2894
    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getType()I

    move-result p1

    const-string p2, "searchFishDialog"

    if-nez p1, :cond_0

    const/16 p1, 0x9

    .line 2895
    invoke-static {p1}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->newInstance(I)Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;

    move-result-object p1

    .line 2896
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/16 p1, 0x16

    .line 2898
    invoke-static {p1}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->newInstance(I)Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;

    move-result-object p1

    .line 2899
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/powervision/gcs/view/ShipIntroduceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 2902
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->val$interestListWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2903
    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getType()I

    move-result p1

    if-nez p1, :cond_2

    .line 2904
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getInterestDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getInterestAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getInterestLatlng()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 2906
    :cond_2
    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getInterestLatlng()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    .line 2907
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2908
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2909
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 2910
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 2911
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v4, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getType()I

    move-result p1

    if-nez p1, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    move-wide v6, v1

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/powervision/condition/view/NationMapView;->onInterestDeleteAndEdit(ZDD)V

    .line 2917
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    new-instance v0, Lcom/powervision/base/nationmap/model/NationLatLng;

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/powervision/base/nationmap/model/NationLatLng;-><init>(DD)V

    invoke-virtual {p2}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getImgFile()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x8

    invoke-static {p1, v0, p2, v1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4800(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/base/nationmap/model/NationLatLng;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public onPositionHistory(Lcom/powervision/gcs/model/ship/ShipInterestModel;)V
    .locals 11

    .line 2924
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->val$interestListWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2925
    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getInterestLatlng()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 2926
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2927
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2928
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 2929
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 2930
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$19;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v5, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/powervision/gcs/model/ship/ShipInterestModel;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {v5 .. v10}, Lcom/powervision/condition/view/NationMapView;->onPositionHistory(ZDD)V

    return-void
.end method
