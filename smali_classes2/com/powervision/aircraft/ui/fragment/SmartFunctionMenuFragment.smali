.class public Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "SmartFunctionMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/powervision/camera/camera/CameraListener$CameraControllListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$MenuItemClickListener;
    }
.end annotation


# instance fields
.field private mCloseBt:Landroid/widget/ImageView;

.field private mIconArrays:[I

.field private mMenuItemClickListener:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$MenuItemClickListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSmartFollowMenuAdapter:Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;

.field private mStringArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 39
    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_normal:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_follow:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_interest_point:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_video:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/powervision/aircraft/R$mipmap;->aircraft_smart_delayed_video:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mIconArrays:[I

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;)Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mSmartFollowMenuAdapter:Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;

    return-object p0
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    .line 46
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_fragment_smart_follow_menu_layout:I

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$array;->aircraft_smart_menu_list:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mStringArray:[Ljava/lang/String;

    .line 65
    new-instance p1, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;

    .line 66
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mIconArrays:[I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mStringArray:[Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;-><init>(Landroid/content/Context;[I[Ljava/lang/String;Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mSmartFollowMenuAdapter:Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;

    .line 68
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_smartd_follow_recycler_list:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    sget p1, Lcom/powervision/aircraft/R$id;->aircraft_close:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mCloseBt:Landroid/widget/ImageView;

    .line 70
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mSmartFollowMenuAdapter:Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/camera/camera/CameraManager;->getCameraCurrentStatus()I

    move-result p1

    .line 75
    sget v0, Lcom/powervision/camera/camera/CameraConstant;->STATUS_CAMERA_RECORDING:I

    if-ne p1, v0, :cond_0

    .line 77
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mSmartFollowMenuAdapter:Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->setIsRecording(Z)V

    :cond_0
    return-void
.end method

.method public onAEBMultiplePhotoStart()V
    .locals 0

    return-void
.end method

.method public onCameraStateChange(I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 85
    sget v0, Lcom/powervision/aircraft/R$id;->aircraft_close:I

    if-ne p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mMenuItemClickListener:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$MenuItemClickListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 87
    invoke-interface {p1, v0}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$MenuItemClickListener;->OnSmartMenuItemClick(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->removeCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V

    .line 58
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onHDRMultiplePhotoStart()V
    .locals 0

    return-void
.end method

.method public onMultipleShotsStart()V
    .locals 0

    return-void
.end method

.method public onPhotograph(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSmartItemClick(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mMenuItemClickListener:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$MenuItemClickListener;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$MenuItemClickListener;->OnSmartMenuItemClick(I)V

    :cond_0
    return-void
.end method

.method public onStartRecordVideo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$1;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onStopRecordVideo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "0"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$2;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onStorageFull(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSwitchPhotographMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSwitchRecordMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTimingStart()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mCloseBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-static {}, Lcom/powervision/camera/camera/CameraManager;->getInstance()Lcom/powervision/camera/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/camera/camera/CameraManager;->addCameraControllListener(Lcom/powervision/camera/camera/CameraListener$CameraControllListener;)V

    return-void
.end method

.method public setMenuItemClickListener(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->mMenuItemClickListener:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$MenuItemClickListener;

    return-void
.end method
