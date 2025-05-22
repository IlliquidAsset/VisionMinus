.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$64;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->showCommonSettingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 8144
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$64;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$64;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 8147
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8150
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$64;->val$view:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8151
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$64;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->closeMenu()V

    .line 8152
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$64;->val$view:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$64;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8153
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$64;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8700(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/view/ship/ShipCommonSettingView;->clear()V

    .line 8154
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$64;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->access$8702(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;Lcom/powervision/gcs/view/ship/ShipCommonSettingView;)Lcom/powervision/gcs/view/ship/ShipCommonSettingView;

    return-void
.end method
