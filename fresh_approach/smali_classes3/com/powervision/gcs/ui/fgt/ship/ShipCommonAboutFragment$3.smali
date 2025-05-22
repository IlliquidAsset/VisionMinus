.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$3;
.super Ljava/lang/Object;
.source "ShipCommonAboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->showPopupWindow(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

.field final synthetic val$mShadowLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$3;->val$mShadowLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 319
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$3;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->access$200(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$3;->val$mShadowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
