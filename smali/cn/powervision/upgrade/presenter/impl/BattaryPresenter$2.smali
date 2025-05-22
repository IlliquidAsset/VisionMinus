.class Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$2;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->reTry(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$2;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 143
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 147
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery battery: retry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$2;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$2;->this$0:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;

    iget-object v1, v1, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqDD"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->batteryUpgrade()I

    :cond_1
    return-void
.end method
