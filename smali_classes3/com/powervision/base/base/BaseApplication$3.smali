.class Lcom/powervision/base/base/BaseApplication$3;
.super Ljava/util/TimerTask;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/base/BaseApplication;->startRecordLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/base/BaseApplication;


# direct methods
.method constructor <init>(Lcom/powervision/base/base/BaseApplication;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/powervision/base/base/BaseApplication$3;->this$0:Lcom/powervision/base/base/BaseApplication;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/powervision/base/base/BaseApplication$3;->this$0:Lcom/powervision/base/base/BaseApplication;

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->excuteWriteFile()V

    return-void
.end method
