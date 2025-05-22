.class public Lcom/powervision/aircraft/ui/fragment/CloudModeFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "CloudModeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/powervision/aircraft/ui/fragment/CloudModeFragment;
    .locals 1

    .line 21
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/CloudModeFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/CloudModeFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 26
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_cloud_mode_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
