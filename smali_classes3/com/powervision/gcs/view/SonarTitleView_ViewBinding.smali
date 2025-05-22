.class public Lcom/powervision/gcs/view/SonarTitleView_ViewBinding;
.super Ljava/lang/Object;
.source "SonarTitleView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/view/SonarTitleView;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/SonarTitleView;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p1}, Lcom/powervision/gcs/view/SonarTitleView_ViewBinding;-><init>(Lcom/powervision/gcs/view/SonarTitleView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/view/SonarTitleView;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarTitleView_ViewBinding;->target:Lcom/powervision/gcs/view/SonarTitleView;

    .line 28
    sget v0, Lcom/powervision/gcs/R$id;->device_connect_mark:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'deviceConnectMark\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectMark:Landroid/widget/ImageView;

    .line 29
    sget v0, Lcom/powervision/gcs/R$id;->device_connect_content:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'deviceConnectContent\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/powervision/gcs/R$id;->device_connect_bg:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'deviceConnectBg\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectBg:Landroid/widget/LinearLayout;

    .line 31
    sget v0, Lcom/powervision/gcs/R$id;->signal_mark:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'signalMark\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarTitleView;->signalMark:Landroid/widget/ImageView;

    .line 32
    sget v0, Lcom/powervision/gcs/R$id;->battery_mark:I

    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'batteryMark\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarTitleView;->batteryMark:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->battery_content:I

    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'batteryContent\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/powervision/gcs/view/SonarTitleView;->batteryContent:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->battery_bg:I

    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'batteryBg\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/powervision/gcs/view/SonarTitleView;->batteryBg:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/powervision/gcs/view/SonarTitleView_ViewBinding;->target:Lcom/powervision/gcs/view/SonarTitleView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/powervision/gcs/view/SonarTitleView_ViewBinding;->target:Lcom/powervision/gcs/view/SonarTitleView;

    .line 44
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectMark:Landroid/widget/ImageView;

    .line 45
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectContent:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarTitleView;->deviceConnectBg:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarTitleView;->signalMark:Landroid/widget/ImageView;

    .line 48
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarTitleView;->batteryMark:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarTitleView;->batteryContent:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/powervision/gcs/view/SonarTitleView;->batteryBg:Landroid/widget/LinearLayout;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
