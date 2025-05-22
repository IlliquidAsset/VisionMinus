.class final Lcom/mob/wrappers/UMSSDKWrapper$2;
.super Ljava/lang/Object;
.source "UMSSDKWrapper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/UMSSDKWrapper;->getLoginUser(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;Ljava/lang/Throwable;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mob/wrappers/UMSSDKWrapper$2;->val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;

    iput-object p2, p0, Lcom/mob/wrappers/UMSSDKWrapper$2;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/mob/wrappers/UMSSDKWrapper$2;->val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;

    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mob/wrappers/UMSSDKWrapper$2;->val$t:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;->onError(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
