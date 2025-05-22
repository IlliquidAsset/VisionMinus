.class final Lcom/mob/wrappers/UMSSDKWrapper$3;
.super Lcom/mob/ums/OperationCallback;
.source "UMSSDKWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/UMSSDKWrapper;->showLogin(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/ums/OperationCallback<",
        "Lcom/mob/ums/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/mob/wrappers/UMSSDKWrapper$3;->val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;

    invoke-direct {p0}, Lcom/mob/ums/OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/mob/wrappers/UMSSDKWrapper$3;->val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p1}, Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/mob/ums/User;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/mob/wrappers/UMSSDKWrapper$3;->val$callback:Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;

    if-eqz v0, :cond_0

    .line 114
    new-instance v1, Lcom/mob/wrappers/UMSSDKWrapper$User;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/mob/wrappers/UMSSDKWrapper$User;-><init>(Lcom/mob/ums/User;Lcom/mob/wrappers/UMSSDKWrapper$1;)V

    invoke-interface {v0, v1}, Lcom/mob/wrappers/UMSSDKWrapper$CallbackWrapper;->onSuccess(Lcom/mob/wrappers/UMSSDKWrapper$User;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Lcom/mob/ums/User;

    invoke-virtual {p0, p1}, Lcom/mob/wrappers/UMSSDKWrapper$3;->onSuccess(Lcom/mob/ums/User;)V

    return-void
.end method
