.class public Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;
.super Lcom/powervision/base/base/BaseActivity;
.source "AircraftSelfCheckActivity.java"


# instance fields
.field private mAircraftSelfCheckFragment:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

.field private mCurrentFragment:Landroidx/fragment/app/Fragment;

.field mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mRemoteModeFragment:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private tempMode:I

.field private waterMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;-><init>()V

    return-void
.end method

.method private createRemoteModeFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mRemoteModeFragment:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mRemoteModeFragment:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mRemoteModeFragment:Lcom/powervision/aircraft/ui/fragment/RemoteModeFragment;

    return-object v0
.end method

.method private toAircraftActivity(Landroid/util/SparseIntArray;)V
    .locals 3

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->waterMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aaaaaaaaaaaaa1"

    invoke-static {v2, v1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iput p1, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->waterMode:I

    const-string v1, "waterMode"

    .line 146
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->finish()V

    return-void
.end method


# virtual methods
.method public closeRemoteMode()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xd4
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mAircraftSelfCheckFragment:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    invoke-virtual {p0, v0, v1}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public finishThis(Landroid/util/SparseIntArray;)V
    .locals 0
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xb7
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->toAircraftActivity(Landroid/util/SparseIntArray;)V

    return-void
.end method

.method protected getLayoutRes()I
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->systemFullScreen()V

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 45
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 47
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 50
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_activity_self_check_layout:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "waterMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->waterMode:I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->waterMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aaaaaaaaaaaaa"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->waterMode:I

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;->newInstance(I)Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mAircraftSelfCheckFragment:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    .line 81
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 82
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 83
    sget v1, Lcom/powervision/aircraft/R$id;->self_check_content_layout:I

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mAircraftSelfCheckFragment:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 84
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mAircraftSelfCheckFragment:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    iput-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/powervision/base/rxbus/RxBus;->register(Ljava/lang/Object;)V

    .line 56
    sget p1, Lcom/powervision/aircraft/R$id;->self_check_content_layout:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 57
    invoke-virtual {p0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v0, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AircraftSelfCheckActivity$pl_lACNJNHrg1uXDhaH3aGWKTC4;

    invoke-direct {v0, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AircraftSelfCheckActivity$pl_lACNJNHrg1uXDhaH3aGWKTC4;-><init>(Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$0$AircraftSelfCheckActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 60
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p1

    .line 64
    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mAircraftSelfCheckFragment:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    if-eqz v1, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->toAircraftActivity(Landroid/util/SparseIntArray;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mAircraftSelfCheckFragment:Lcom/powervision/aircraft/ui/fragment/AircraftSelfCheckFragment;

    invoke-virtual {p0, v0, v1}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/powervision/base/base/BaseActivity;->onDestroy()V

    .line 155
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRemoteModeClick()V
    .locals 2
    .annotation runtime Lcom/powervision/base/rxbus/Subscribe;
        code = 0xb9
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->createRemoteModeFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public switchContentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    if-eq v0, p2, :cond_1

    .line 102
    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 103
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 104
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/powervision/aircraft/R$id;->self_check_content_layout:I

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AircraftSelfCheckActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    :goto_0
    return-void
.end method
