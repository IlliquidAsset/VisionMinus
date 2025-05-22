.class Lcom/powervision/natives/connect/Ap03ConnectSdk$1;
.super Ljava/lang/Object;
.source "Ap03ConnectSdk.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03SysWarnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/Ap03ConnectSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/Ap03ConnectSdk;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/powervision/natives/connect/Ap03ConnectSdk$1;->this$0:Lcom/powervision/natives/connect/Ap03ConnectSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSysWarnInfo(III)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/powervision/base/base/lifecycle/ActivityManager;->getInstance()Lcom/powervision/base/base/lifecycle/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/base/base/lifecycle/ActivityManager;->showDialog(III)V

    return-void
.end method
