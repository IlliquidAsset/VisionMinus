.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showInterestDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$desc:Ljava/lang/String;

.field final synthetic val$interestDes:Landroid/widget/EditText;

.field final synthetic val$strAddress:Ljava/lang/String;

.field final synthetic val$strLatlng:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2802
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->val$interestDes:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->val$desc:Ljava/lang/String;

    iput-object p4, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->val$strAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->val$strLatlng:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 2805
    invoke-static {}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->getInstance()Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;

    move-result-object v0

    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->val$interestDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->val$desc:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->val$interestDes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    iget-object v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->val$strAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->val$strLatlng:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/powervision/gcs/utils/ship/ShipInterestDbUtil;->insertInterest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/powervision/condition/view/NationMapView;->removeInterestMarker()V

    .line 2811
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$14;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$4400(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
