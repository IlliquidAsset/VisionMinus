.class Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1$1;
.super Ljava/lang/Object;
.source "BattaryPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;->setBatteryUpgradeResultCodeQueryTimeout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;


# direct methods
.method constructor <init>(Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1$1;->this$1:Lcn/powervision/upgrade/presenter/impl/BattaryPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xce4

    .line 95
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 99
    :goto_0
    invoke-static {}, Lcom/powervision/natives/JniAp03Native;->queryBatteryUpgradeStatus()I

    return-void
.end method
