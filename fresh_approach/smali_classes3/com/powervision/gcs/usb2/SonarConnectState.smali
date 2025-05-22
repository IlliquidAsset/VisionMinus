.class public Lcom/powervision/gcs/usb2/SonarConnectState;
.super Ljava/lang/Object;
.source "SonarConnectState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;
    }
.end annotation


# static fields
.field public static final CONNECTED:I = 0x3

.field public static CONNECTED_STATE:I = 0x1

.field public static final DISCONNECTED:I = 0x2

.field public static final IDEAL:I = 0x1

.field private static isMounted:Z = false

.field private static mOnSonarConnectStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/powervision/gcs/usb2/SonarConnectState;->mOnSonarConnectStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnSonarConnectStateChangedListener(Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/powervision/gcs/usb2/SonarConnectState;->mOnSonarConnectStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/powervision/gcs/usb2/SonarConnectState;->mOnSonarConnectStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static isCurrentConnected()Z
    .locals 2

    .line 32
    sget v0, Lcom/powervision/gcs/usb2/SonarConnectState;->CONNECTED_STATE:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIsMounted()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/powervision/gcs/usb2/SonarConnectState;->isMounted:Z

    return v0
.end method

.method public static notifyOnSonarConnectStateChangedListeners(Z)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqSonar"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/powervision/gcs/usb2/SonarConnectState;->mOnSonarConnectStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/powervision/gcs/usb2/SonarConnectState;->mOnSonarConnectStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;

    .line 64
    invoke-interface {v1, p0}, Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;->onConnectStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeOnSonarConnectStateChangedListener(Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/powervision/gcs/usb2/SonarConnectState;->mOnSonarConnectStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setSonarConnected()V
    .locals 1

    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lcom/powervision/gcs/usb2/SonarConnectState;->isMounted:Z

    return-void
.end method
