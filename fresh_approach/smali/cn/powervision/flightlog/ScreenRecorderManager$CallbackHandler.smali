.class Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;
.super Landroid/os/Handler;
.source "ScreenRecorderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/powervision/flightlog/ScreenRecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/ScreenRecorderManager;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/ScreenRecorderManager;Landroid/os/Looper;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 124
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-static {v0}, Lcn/powervision/flightlog/ScreenRecorderManager;->access$000(Lcn/powervision/flightlog/ScreenRecorderManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    :cond_1
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-static {v0}, Lcn/powervision/flightlog/ScreenRecorderManager;->access$100(Lcn/powervision/flightlog/ScreenRecorderManager;)Lcn/powervision/flightlog/ScreenRecorderManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-static {v0}, Lcn/powervision/flightlog/ScreenRecorderManager;->access$100(Lcn/powervision/flightlog/ScreenRecorderManager;)Lcn/powervision/flightlog/ScreenRecorderManager$Callback;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcn/powervision/flightlog/ScreenRecorderManager$Callback;->onStop(Ljava/lang/Throwable;)V

    .line 136
    :cond_2
    iget-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-static {p1}, Lcn/powervision/flightlog/ScreenRecorderManager;->access$200(Lcn/powervision/flightlog/ScreenRecorderManager;)V

    .line 138
    :cond_3
    iget-object p1, p0, Lcn/powervision/flightlog/ScreenRecorderManager$CallbackHandler;->this$0:Lcn/powervision/flightlog/ScreenRecorderManager;

    invoke-static {p1}, Lcn/powervision/flightlog/ScreenRecorderManager;->access$300(Lcn/powervision/flightlog/ScreenRecorderManager;)V

    :goto_0
    return-void
.end method
