.class Lcom/powervision/gcs/config/SonarSettingCmd$3;
.super Ljava/lang/Object;
.source "SonarSettingCmd.java"

# interfaces
.implements Lcom/powervision/opensource/CommonCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/config/SonarSettingCmd;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/config/SonarSettingCmd;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/config/SonarSettingCmd;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/powervision/gcs/config/SonarSettingCmd$3;->this$0:Lcom/powervision/gcs/config/SonarSettingCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs failed([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs success([Ljava/lang/Object;)V
    .locals 1

    .line 334
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/powervision/gcs/config/SonarSettingCmd$3$1;

    invoke-direct {v0, p0}, Lcom/powervision/gcs/config/SonarSettingCmd$3$1;-><init>(Lcom/powervision/gcs/config/SonarSettingCmd$3;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 345
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public varargs timeout([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
