.class public Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "DeviceLinkActivity.java"


# instance fields
.field private permissionBtn:Landroid/widget/Button;

.field private rxPermissions:Lcom/tbruyelle/rxpermissions2/RxPermissions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method private requestPermissions()V
    .locals 2

    .line 46
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;->rxPermissions:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 47
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestEach([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity$1;-><init>(Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .line 28
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_device_link_activity:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    sget p1, Lcom/powervision/aircraft/R$id;->permission_btn:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;->permissionBtn:Landroid/widget/Button;

    .line 34
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$DeviceLinkActivity$neDBqeKLFj82RI3Yqfsf6Wwn4So;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$DeviceLinkActivity$neDBqeKLFj82RI3Yqfsf6Wwn4So;-><init>(Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initView$0$DeviceLinkActivity(Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/DeviceLinkActivity;->requestPermissions()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/powervision/base/permission/MPermission;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method
