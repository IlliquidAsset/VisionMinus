.class Lcom/powervision/gcs/config/SonarSettingCmd$3$1;
.super Ljava/lang/Object;
.source "SonarSettingCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/config/SonarSettingCmd$3;->success([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/config/SonarSettingCmd$3;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/config/SonarSettingCmd$3;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/powervision/gcs/config/SonarSettingCmd$3$1;->this$1:Lcom/powervision/gcs/config/SonarSettingCmd$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 338
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 342
    :goto_0
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->openDataStreamCMD()V

    return-void
.end method
