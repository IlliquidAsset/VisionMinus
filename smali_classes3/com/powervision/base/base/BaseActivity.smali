.class public abstract Lcom/powervision/base/base/BaseActivity;
.super Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/powervision/base/base/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/powervision/base/base/BasePresenter;",
        "M::",
        "Lcom/powervision/base/base/BaseModel;",
        ">",
        "Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;",
        "Lcom/powervision/base/base/BaseView;"
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field protected mModel:Lcom/powervision/base/base/BaseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field protected mPresenter:Lcom/powervision/base/base/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/base/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private checkPermission()Z
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 213
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.CAMERA"

    .line 216
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 219
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 222
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 225
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$systemFullScreen$0(Landroid/view/View;II)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkDeviceHasNavigationBar()Z
    .locals 7

    .line 67
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 73
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 74
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "qemu.hw.mainkeys"

    aput-object v6, v5, v2

    .line 75
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "1"

    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "0"

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    move v0, v2

    :catch_0
    return v0
.end method

.method protected abstract getLayoutRes()I
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .line 205
    invoke-super {p0}, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 207
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 208
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method protected init()V
    .locals 2

    const-string v0, "onDestroy   init"

    .line 91
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 93
    invoke-static {p0, v0}, Lcom/powervision/base/utils/MVPUtils;->getT(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/base/BasePresenter;

    iput-object v0, p0, Lcom/powervision/base/base/BaseActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    const/4 v0, 0x1

    .line 94
    invoke-static {p0, v0}, Lcom/powervision/base/utils/MVPUtils;->getT(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/base/base/BaseModel;

    iput-object v0, p0, Lcom/powervision/base/base/BaseActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    .line 95
    iget-object v0, p0, Lcom/powervision/base/base/BaseActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    const-string v0, "onDestroy   mPresenter"

    .line 96
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/powervision/base/base/BaseActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    iget-object v1, p0, Lcom/powervision/base/base/BaseActivity;->mModel:Lcom/powervision/base/base/BaseModel;

    invoke-virtual {v0, p0, v1, p0}, Lcom/powervision/base/base/BasePresenter;->attachView(Lcom/powervision/base/base/BaseView;Lcom/powervision/base/base/BaseModel;Lcom/trello/rxlifecycle4/LifecycleProvider;)V

    :cond_0
    return-void
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initSystemBar()V
    .locals 2

    const-string v0, "#FFFFFF"

    .line 119
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#bbbbbb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/powervision/base/base/BaseActivity;->initSystemBar(II)V

    return-void
.end method

.method protected initSystemBar(II)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, p2, v0}, Lcom/powervision/base/base/BaseActivity;->initSystemBar(IIF)V

    return-void
.end method

.method protected initSystemBar(IIF)V
    .locals 2

    .line 128
    invoke-static {}, Lcom/powervision/base/utils/SystemBarHelper;->isMIUI6Later()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/powervision/base/utils/SystemBarHelper;->isFlyme4Later()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/powervision/base/utils/SystemBarHelper;->tintStatusBar(Landroid/app/Activity;IF)V

    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/powervision/base/utils/SystemBarHelper;->setStatusBarDarkMode(Landroid/app/Activity;)V

    .line 130
    invoke-static {p0, p1, p3}, Lcom/powervision/base/utils/SystemBarHelper;->tintStatusBar(Landroid/app/Activity;IF)V

    :goto_1
    return-void
.end method

.method protected abstract initView(Landroid/os/Bundle;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/powervision/base/base/BaseActivity;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;

    move-result-object v0

    const-string v1, "/welcome/welcomeActivity"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseActivity;->getLayoutRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powervision/base/base/BaseActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/base/BaseActivity;->rootView:Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseActivity;->init()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/powervision/base/base/BaseActivity;->initView(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseActivity;->initData()V

    .line 57
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseActivity;->setListener()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcom/powervision/base/base/BaseActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/powervision/base/base/BasePresenter;->detachView()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/powervision/base/base/BaseActivity;->mPresenter:Lcom/powervision/base/base/BasePresenter;

    .line 199
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/powervision/base/rxbus/RxBus;->unRegister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 188
    invoke-super {p0}, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->onPause()V

    .line 189
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 182
    invoke-super {p0}, Lcom/trello/rxlifecycle4/components/support/RxAppCompatActivity;->onResume()V

    .line 183
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/powervision/base/base/BaseActivity;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/powervision/base/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    .line 174
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    :cond_0
    invoke-virtual {p0, v0}, Lcom/powervision/base/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x10a0000

    const p2, 0x10a0001

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/powervision/base/base/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected systemFullScreen()V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/powervision/base/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 110
    new-instance v2, Lcom/powervision/base/base/-$$Lambda$BaseActivity$aSk7tWxL278wIpCjIubc0wguT6I;

    invoke-direct {v2, v0, v1}, Lcom/powervision/base/base/-$$Lambda$BaseActivity$aSk7tWxL278wIpCjIubc0wguT6I;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method
