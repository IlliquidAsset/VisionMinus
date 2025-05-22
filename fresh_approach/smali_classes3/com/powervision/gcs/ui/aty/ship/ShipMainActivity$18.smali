.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$18;
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

.field final synthetic val$interestListWindow:Landroid/widget/PopupWindow;

.field final synthetic val$interestListXoff:I

.field final synthetic val$interestListYoff:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/widget/PopupWindow;II)V
    .locals 0

    .line 2881
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$18;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$18;->val$interestListWindow:Landroid/widget/PopupWindow;

    iput p3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$18;->val$interestListXoff:I

    iput p4, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$18;->val$interestListYoff:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2884
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$18;->val$interestListWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$18;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object v1, v1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->layerSwitch:Landroid/widget/ImageView;

    iget v2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$18;->val$interestListXoff:I

    iget v3, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$18;->val$interestListYoff:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
