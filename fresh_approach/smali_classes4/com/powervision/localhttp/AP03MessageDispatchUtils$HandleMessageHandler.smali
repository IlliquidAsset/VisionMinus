.class Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;
.super Landroid/os/Handler;
.source "AP03MessageDispatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/localhttp/AP03MessageDispatchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleMessageHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/localhttp/AP03MessageDispatchUtils$1;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/powervision/localhttp/AP03MessageDispatchUtils$HandleMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 132
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/powervision/localhttp/AP03RequestHelper;->get()Lcom/powervision/localhttp/AP03RequestHelper;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/powervision/localhttp/AP03RequestHelper;->notifyListeners(IILjava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/powervision/localhttp/AP03RequestHelper;->get()Lcom/powervision/localhttp/AP03RequestHelper;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/powervision/localhttp/AP03RequestHelper;->notifyListeners(IILjava/lang/String;)V

    :goto_0
    return-void
.end method
