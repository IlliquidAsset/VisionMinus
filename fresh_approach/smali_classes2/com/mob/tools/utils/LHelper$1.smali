.class Lcom/mob/tools/utils/LHelper$1;
.super Ljava/lang/Object;
.source "LHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/LHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/utils/LHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/LHelper;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/mob/tools/utils/LHelper$1;->this$0:Lcom/mob/tools/utils/LHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 40
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper$1;->this$0:Lcom/mob/tools/utils/LHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LHelper;->access$200(Lcom/mob/tools/utils/LHelper;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper$1;->this$0:Lcom/mob/tools/utils/LHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LHelper;->access$100(Lcom/mob/tools/utils/LHelper;)V

    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper$1;->this$0:Lcom/mob/tools/utils/LHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LHelper;->access$000(Lcom/mob/tools/utils/LHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 55
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 56
    iget-object p1, p0, Lcom/mob/tools/utils/LHelper$1;->this$0:Lcom/mob/tools/utils/LHelper;

    invoke-static {p1}, Lcom/mob/tools/utils/LHelper;->access$300(Lcom/mob/tools/utils/LHelper;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
