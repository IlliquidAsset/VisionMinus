.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$72;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->dismiss(Lcom/powervision/base/views/FakeDialogView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$fakeDialogView:Lcom/powervision/base/views/FakeDialogView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/base/views/FakeDialogView;)V
    .locals 0

    .line 8831
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$72;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$72;->val$fakeDialogView:Lcom/powervision/base/views/FakeDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 8839
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$72;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$300(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$72;->val$fakeDialogView:Lcom/powervision/base/views/FakeDialogView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
