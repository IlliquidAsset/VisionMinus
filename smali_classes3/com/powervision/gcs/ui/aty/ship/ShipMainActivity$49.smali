.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$49;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 6101
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$49;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 6104
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6107
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$49;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7100(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6108
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$49;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7200(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$49;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_satellite_map_unselect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6109
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$49;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$49;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$mipmap;->ship_normal_map_select:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6126
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$49;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->mapView:Lcom/powervision/condition/view/NationMapView;

    invoke-virtual {p1}, Lcom/powervision/condition/view/NationMapView;->setNormalMapType()V

    .line 6127
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$49;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$7402(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;I)I

    return-void
.end method
