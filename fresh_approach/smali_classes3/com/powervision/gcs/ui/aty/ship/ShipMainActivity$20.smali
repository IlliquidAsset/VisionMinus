.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$20;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 2941
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$20;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2944
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$20;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/powervision/gcs/R$layout;->ship_add_interest_hint:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x432a0000    # 170.0f

    .line 2945
    invoke-static {v1}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    .line 2946
    invoke-static {v2}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    .line 2947
    invoke-static {v3}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v3

    const/high16 v4, -0x3e700000    # -18.0f

    .line 2948
    invoke-static {v4}, Lcom/powervision/gcs/utils/Utils;->dipToPx(F)I

    move-result v4

    .line 2949
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v0, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v0, 0x1

    .line 2950
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2951
    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2952
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2953
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$20;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v0, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layerSwitch:Landroid/widget/ImageView;

    invoke-virtual {v5, v0, v4, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
