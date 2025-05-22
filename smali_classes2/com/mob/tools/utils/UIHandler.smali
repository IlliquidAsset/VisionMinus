.class public Lcom/mob/tools/utils/UIHandler;
.super Ljava/lang/Object;
.source "UIHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/UIHandler$InnerObj;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Message;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/mob/tools/utils/UIHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private static getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;
    .locals 1

    .line 95
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 96
    iput p0, v0, Landroid/os/Message;->what:I

    .line 97
    invoke-static {v0, p1}, Lcom/mob/tools/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private static getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;
    .locals 2

    .line 89
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 90
    new-instance v1, Lcom/mob/tools/utils/UIHandler$InnerObj;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/utils/UIHandler$InnerObj;-><init>(Landroid/os/Message;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private static handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 80
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/mob/tools/utils/UIHandler$InnerObj;

    .line 81
    iget-object v0, p0, Lcom/mob/tools/utils/UIHandler$InnerObj;->msg:Landroid/os/Message;

    .line 82
    iget-object p0, p0, Lcom/mob/tools/utils/UIHandler$InnerObj;->callback:Landroid/os/Handler$Callback;

    if-eqz p0, :cond_0

    .line 84
    invoke-interface {p0, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private static declared-synchronized prepare()V
    .locals 2

    const-class v0, Lcom/mob/tools/utils/UIHandler;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/UIHandler;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 19
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->reset()V

    .line 20
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->printPray()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static printPray()V
    .locals 4

    :try_start_0
    const-string v0, "MAAlDCUQMAAwADAAJQwlEAAKJQwlGCUUJQAlACUAJRglFCUQAAolAjAAMAAwADAAMAAwADAAJQIACiUCMAAwADAAJQAwADAAMAAlAgAKJQIwACUsJRgwACUUJSwwACUCAAolAjAAMAAwADAAMAAwADAAJQIACiUCMAAwADAAJTQwADAAMAAlAgAKJQIwADAAMAAwADAAMAAwACUCAAolFCUAJRAwADAAMAAlDCUAJRgACjAAMAAlAjAAMAAwACUCAAowADAAJQIwADAAMAAlAgAKMAAwACUCMAAwADAAJQIwADAAMAAwAABDAG8AZABlACAAaQBzACAAZgBhAHIAIABhAHcAYQB5ACAAZgByAG8AbQAgAGIAdQBnACAAdwBpAHQAaAAgAHQAaABlACAAYQBuAGkAbQBhAGwAIABwAHIAbwB0AGUAYwB0AGkAbgBnAAowADAAJQIwADAAMAAlAjAAMAAwADAAeV5RfU/dT1H/DE7jeAFl4ABCAFUARwAKMAAwACUCMAAwADAAJQIACjAAMAAlAjAAMAAwACUCAAowADAAJQIwADAAMAAlFCUAJQAlACUQAAowADAAJQIwADAAMAAwADAAMAAwACUcJRAACjAAMAAlAjAAMAAwADAAMAAwADAAJRwlGAAKMAAwACUUJRAlECUMJQAlLCUQJQwlGAAKMAAwADAAJQIlJCUkMAAlAiUkJSQACjAAMAAwACUUJRglGDAAJRQlGCUY"

    const-string v1, "MAAlDCUQMAAwADAAJQwlEAAKJQwlGCUUJQAlACUAJRglFCUQAAolAjAAMAAwADAAMAAwADAAJQIACiUCMAAwADAAJQAwADAAMAAlAgAKJQIwAP8eMAAwADAA/xwwACUCAAolAjAAMAAwADAAMAAwADAAJQIACiUCMAAgJjAA/z4wACAmMAAlAgAKJQIwADAAMAAwADAAMAAwACUCAAolFCUAJRAwADAAMAAlDCUAJRgACjAAMAAlAjAAMAAwACUCAAowADAAJQIwADAAMAAlAgAKMAAwACUCMAAwADAAJQIwADAAMAAwAABDAG8AZABlACAAaQBzACAAZgBhAHIAIABhAHcAYQB5ACAAZgByAG8AbQAgAGIAdQBnACAAdwBpAHQAaAAgAHQAaABlACAAYQBuAGkAbQBhAGwAIABwAHIAbwB0AGUAYwB0AGkAbgBnAAowADAAJQIwADAAMAAlAjAAMAAwADAAeV5RfU/dT1H/DE7jeAFl4ABCAFUARwAKMAAwACUCMAAwADAAJQIACjAAMAAlAjAAMAAwACUCAAowADAAJQIwADAAMAAlFCUAJQAlACUQAAowADAAJQIwADAAMAAwADAAMAAwACUcJRAACjAAMAAlAjAAMAAwADAAMAAwADAAJRwlGAAKMAAwACUUJRAlECUMJQAlLCUQJQwlGAAKMAAwADAAJQIlJCUkMAAlAiUkJSQACjAAMAAwACUUJRglGDAAJRQlGCUY"

    const-string v2, "MAAlDCUQMAAwADAAJQwlEP8LMAD/CwAKJQwlGCUUJQAlACUAJRglFCUQMAD/CzAA/wsACiUCMAAwADAAMAAwADAAMAAlAgAKJQIwADAAMAAlADAAMAAwACUCMAD/C/8LMAD/CzAA/wswAP8LAAolAiWIJYgliCAVJYgliCWIJQIwAP8LAAolAjAAMAAwADAAMAAwADAAJQIwAP8LAAolAjAAMAAwACU0MAAwADAAJQIACiUCMAAwADAAMAAwADAAMAAlAjAA/wswAP8LAAolFCUAJRAwADAAMAAlDCUAJRgACjAAMAAlAjAAMAAwACUCAAowADAAJQIwADAAMAAlAjAA/wswAP8LMAD/CzAA/wsACjAAMAAlAjAAMAAwACUCAAowADAAJQIwADAAMAAlAjAA/wswADAAAEMAbwBkAGUAIABpAHMAIABmAGEAcgAgAGEAdwBhAHkAIABmAHIAbwBtACAAYgB1AGcAIAB3AGkAdABoACAAdABoAGUAIABhAG4AaQBtAGEAbAAgAHAAcgBvAHQAZQBjAHQAaQBuAGcACjAAMAAlAjAAMAAwACUCMAAwADAAMAB5XlF9T91PUf8MTuN4AWXgAEIAVQBHAAowADAAJQIwADAAMAAlAjAAMAD/CwAKMAAwACUCMAAwADAAJRQlACUAJQAlEDAA/wswAP8LAAowADAAJQIwADAAMAAwADAAMAAwACUcJRAACjAAMAAlAjAAMAAwADAAMAAwADAAJRwlGAAKMAAwACUUJRAlECUMJQAlLCUQJQwlGDAA/wswAP8LMAD/CzAA/wsACjAAMAAwACUCJSQlJDAAJQIlJCUkAAowADAAMAAlFCUYJRgwACUUJRglGDAA/wswAP8LMAD/CzAA/ws="

    .line 35
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 70
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x2

    .line 71
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 72
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 75
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static reset()V
    .locals 3

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/mob/tools/utils/UIHandler$1;

    invoke-direct {v2}, Lcom/mob/tools/utils/UIHandler$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/mob/tools/utils/UIHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    .locals 1

    .line 121
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->prepare()V

    .line 122
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/mob/tools/utils/UIHandler;->getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static sendEmptyMessageAtTime(IJLandroid/os/Handler$Callback;)Z
    .locals 1

    .line 126
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->prepare()V

    .line 127
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lcom/mob/tools/utils/UIHandler;->getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public static sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z
    .locals 1

    .line 131
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->prepare()V

    .line 132
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lcom/mob/tools/utils/UIHandler;->getShellMessage(ILandroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public static sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z
    .locals 1

    .line 101
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->prepare()V

    .line 102
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/mob/tools/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static sendMessageAtFrontOfQueue(Landroid/os/Message;Landroid/os/Handler$Callback;)Z
    .locals 1

    .line 116
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->prepare()V

    .line 117
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/mob/tools/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static sendMessageAtTime(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z
    .locals 1

    .line 111
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->prepare()V

    .line 112
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lcom/mob/tools/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public static sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z
    .locals 1

    .line 106
    invoke-static {}, Lcom/mob/tools/utils/UIHandler;->prepare()V

    .line 107
    sget-object v0, Lcom/mob/tools/utils/UIHandler;->handler:Landroid/os/Handler;

    invoke-static {p0, p3}, Lcom/mob/tools/utils/UIHandler;->getShellMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method
