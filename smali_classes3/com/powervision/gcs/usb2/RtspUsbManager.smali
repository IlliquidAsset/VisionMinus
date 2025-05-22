.class public Lcom/powervision/gcs/usb2/RtspUsbManager;
.super Ljava/lang/Object;
.source "RtspUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;,
        Lcom/powervision/gcs/usb2/RtspUsbManager$TimeOutListener;,
        Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RtspUsbManager"

.field public static crrent_data_len:I = 0x0

.field public static receiveable:Z = true

.field private static rtspUsbManager:Lcom/powervision/gcs/usb2/RtspUsbManager;


# instance fields
.field loop:Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;

.field net_data:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field onStartCallBack:Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->loop:Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;

    .line 36
    new-instance v0, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;

    new-instance v1, Lcom/powervision/gcs/usb2/RtspUsbManager$1;

    invoke-direct {v1, p0}, Lcom/powervision/gcs/usb2/RtspUsbManager$1;-><init>(Lcom/powervision/gcs/usb2/RtspUsbManager;)V

    invoke-direct {v0, v1}, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;-><init>(Lcom/powervision/gcs/usb2/RtspUsbManager$TimeOutListener;)V

    iput-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->loop:Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;

    return-void
.end method

.method public static get()Lcom/powervision/gcs/usb2/RtspUsbManager;
    .locals 1

    .line 46
    sget-object v0, Lcom/powervision/gcs/usb2/RtspUsbManager;->rtspUsbManager:Lcom/powervision/gcs/usb2/RtspUsbManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/powervision/gcs/usb2/RtspUsbManager;

    invoke-direct {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager;-><init>()V

    sput-object v0, Lcom/powervision/gcs/usb2/RtspUsbManager;->rtspUsbManager:Lcom/powervision/gcs/usb2/RtspUsbManager;

    .line 49
    :cond_0
    sget-object v0, Lcom/powervision/gcs/usb2/RtspUsbManager;->rtspUsbManager:Lcom/powervision/gcs/usb2/RtspUsbManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addAPacket([BI)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/RtspUsbManager;->startReceive()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/powervision/gcs/usb2/RtspUsbManager;->sendStart()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 89
    iget-object p1, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->onStartCallBack:Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;

    if-eqz p1, :cond_3

    .line 90
    iget-object p1, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->onStartCallBack:Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;

    invoke-interface {p1}, Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;->onFailed()V

    goto :goto_0

    .line 95
    :cond_2
    iget-object p2, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    .line 96
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearBuffer()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "lzqrtsp"

    const-string v1, "\u6e05\u7a7a\u7f13\u5b58 \uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01\uff01"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 107
    sput v0, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read_rtsp_head_line()[B
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [B

    .line 113
    :goto_0
    sget-boolean v2, Lcom/powervision/gcs/usb2/RtspUsbManager;->receiveable:Z

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    .line 121
    sget v4, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    if-lt v4, v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 123
    sput v3, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    goto :goto_0

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget v4, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    invoke-static {v2, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    sget v2, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    add-int/2addr v2, v0

    sput v2, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read_rtsp_max_data(I[I)[B
    .locals 4

    monitor-enter p0

    .line 138
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/powervision/gcs/usb2/RtspUsbManager;->receiveable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 141
    iget-object v2, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    .line 147
    sget v2, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    if-lt v2, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 149
    sput v1, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    goto :goto_0

    .line 152
    :cond_1
    sget v2, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    sub-int/2addr v0, v2

    if-lt v0, p1, :cond_2

    .line 155
    new-array v0, p1, [B

    .line 157
    iget-object v2, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    aput p1, p2, v1

    .line 159
    sget p2, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    add-int/2addr p2, p1

    sput p2, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    move-object v1, v0

    goto :goto_1

    .line 163
    :cond_2
    new-array p1, v0, [B

    .line 165
    iget-object v2, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->net_data:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget v3, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    aput v0, p2, v1

    .line 167
    sget p2, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I

    add-int/2addr p2, v0

    sput p2, Lcom/powervision/gcs/usb2/RtspUsbManager;->crrent_data_len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    .line 175
    :cond_3
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send([B)V
    .locals 2

    .line 54
    array-length v0, p1

    const/16 v1, 0x293a

    invoke-static {v1, v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->intToByteArray(II)[B

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/powervision/gcs/usb2/GcsUsbManager;->getInstance()Lcom/powervision/gcs/usb2/GcsUsbManager;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->concat([B[B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/powervision/gcs/usb2/GcsUsbManager;->send([B)V

    return-void
.end method

.method public sendStart()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->loop:Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->setReceiveStart(Z)V

    .line 60
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->loop:Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->notifyThis()V

    const/16 v0, 0x293a

    .line 62
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendStartLinkCommand(I)V

    return-void
.end method

.method public setStartListener(Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->onStartCallBack:Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;

    return-void
.end method

.method public startAOAConnect()V
    .locals 1

    const/16 v0, 0x293a

    .line 181
    invoke-static {v0}, Lcom/powervision/gcs/usb2/GcsUsbManager;->sendCancelLinkCommand(I)V

    return-void
.end method

.method public startReceive()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->loop:Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->setReceiveStart(Z)V

    .line 68
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->loop:Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;

    invoke-virtual {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager$RtspTimeOutLoop;->notifyThis()V

    .line 69
    iget-object v0, p0, Lcom/powervision/gcs/usb2/RtspUsbManager;->onStartCallBack:Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/powervision/gcs/usb2/RtspUsbManager$OnStartCallBack;->onStart()V

    :cond_0
    return-void
.end method
