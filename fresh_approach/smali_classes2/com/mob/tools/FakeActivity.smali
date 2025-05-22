.class public Lcom/mob/tools/FakeActivity;
.super Ljava/lang/Object;
.source "FakeActivity.java"


# static fields
.field private static shellClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected activity:Landroid/app/Activity;

.field private contentView:Landroid/view/View;

.field private result:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resultReceiver:Lcom/mob/tools/FakeActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mob/tools/FakeActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/FakeActivity;->showActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static registerExecutor(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 39
    sget-object v0, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "registerExecutor"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 41
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 45
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p0, p1}, Lcom/mob/tools/MobUIShell;->registerExecutor(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static setShell(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 35
    sput-object p0, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    return-void
.end method

.method private showActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 235
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 236
    invoke-static {p1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    .line 238
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 243
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public beforeStartActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected disableScreenCapture()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findViewByResName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    invoke-static {v0, p2}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_1

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public findViewByResName(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 111
    :cond_0
    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 113
    invoke-virtual {p0, p1}, Lcom/mob/tools/FakeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final finish()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getParent()Lcom/mob/tools/FakeActivity;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->resultReceiver:Lcom/mob/tools/FakeActivity;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onFinish()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResult(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method protected onSetTheme(IZ)I
    .locals 0

    return p1
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public requestFullScreen(Z)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x400

    const/16 v2, 0x800

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 321
    iget-object p1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 324
    iget-object p1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 327
    :goto_0
    iget-object p1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public requestLandscapeOrientation()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, v0}, Lcom/mob/tools/FakeActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public requestPermissions([Ljava/lang/String;I)V
    .locals 5

    .line 339
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const-string v1, "requestPermissions"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    new-array p1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, p1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, p1, p2

    invoke-static {v0, v1, v3, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 347
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public requestPortraitOrientation()V
    .locals 1

    const/4 v0, 0x1

    .line 296
    invoke-virtual {p0, v0}, Lcom/mob/tools/FakeActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public requestSensorLandscapeOrientation()V
    .locals 1

    const/4 v0, 0x6

    .line 308
    invoke-virtual {p0, v0}, Lcom/mob/tools/FakeActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public requestSensorPortraitOrientation()V
    .locals 1

    const/4 v0, 0x7

    .line 304
    invoke-virtual {p0, v0}, Lcom/mob/tools/FakeActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public runOnUIThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 265
    new-instance v0, Lcom/mob/tools/FakeActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/FakeActivity$2;-><init>(Lcom/mob/tools/FakeActivity;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    return-void
.end method

.method public runOnUIThread(Ljava/lang/Runnable;J)V
    .locals 1

    .line 274
    new-instance v0, Lcom/mob/tools/FakeActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/FakeActivity$3;-><init>(Lcom/mob/tools/FakeActivity;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    return-void
.end method

.method public sendResult()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->resultReceiver:Lcom/mob/tools/FakeActivity;

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->result:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/mob/tools/FakeActivity;->onResult(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/mob/tools/FakeActivity;->contentView:Landroid/view/View;

    return-void
.end method

.method public setContentViewLayoutResName(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {v0, p1}, Lcom/mob/tools/utils/ResHelper;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    :cond_1
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_2

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    return-void
.end method

.method public final setResult(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/mob/tools/FakeActivity;->result:Ljava/util/HashMap;

    return-void
.end method

.method public show(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/FakeActivity;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    return-void
.end method

.method public showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V
    .locals 7

    .line 197
    iput-object p3, p0, Lcom/mob/tools/FakeActivity;->resultReceiver:Lcom/mob/tools/FakeActivity;

    .line 201
    sget-object p3, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 202
    new-instance p3, Landroid/content/Intent;

    sget-object v2, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    invoke-direct {p3, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    :try_start_0
    sget-object v2, Lcom/mob/tools/FakeActivity;->shellClass:Ljava/lang/Class;

    const-string v3, "registerExecutor"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 205
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v1

    .line 206
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 208
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 211
    :cond_0
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/mob/tools/MobUIShell;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    invoke-static {p0}, Lcom/mob/tools/MobUIShell;->registerExecutor(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "launch_time"

    .line 214
    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "executor_name"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 217
    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 220
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_2

    .line 222
    invoke-direct {p0, p1, p3}, Lcom/mob/tools/FakeActivity;->showActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 225
    :cond_2
    new-instance p2, Lcom/mob/tools/FakeActivity$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/mob/tools/FakeActivity$1;-><init>(Lcom/mob/tools/FakeActivity;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1, p2}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    :goto_1
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    .line 169
    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/FakeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
