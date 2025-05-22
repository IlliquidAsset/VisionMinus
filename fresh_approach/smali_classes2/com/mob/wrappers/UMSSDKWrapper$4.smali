.class final Lcom/mob/wrappers/UMSSDKWrapper$4;
.super Ljava/lang/Object;
.source "UMSSDKWrapper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/UMSSDKWrapper;->unAvailable(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;I)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/mob/wrappers/UMSSDKWrapper$4;->val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;

    iput p2, p0, Lcom/mob/wrappers/UMSSDKWrapper$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/mob/wrappers/UMSSDKWrapper$4;->val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;

    if-eqz p1, :cond_1

    .line 134
    iget p1, p0, Lcom/mob/wrappers/UMSSDKWrapper$4;->val$type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 135
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "UMSSDKGUI is not available"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "UMSSDK is not available"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/mob/wrappers/UMSSDKWrapper$4;->val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;

    invoke-interface {v0, p1}, Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;->onError(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
