.class final Lcom/mob/wrappers/ShareSDKWrapper$2;
.super Ljava/lang/Object;
.source "ShareSDKWrapper.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/ShareSDKWrapper;->login(Ljava/lang/String;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mob/wrappers/ShareSDKWrapper$2;->val$callback:Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mob/wrappers/ShareSDKWrapper$2;->val$callback:Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;->onCancel(Ljava/lang/String;I)V

    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mob/wrappers/ShareSDKWrapper$2;->val$callback:Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;->onComplete(Ljava/lang/String;ILjava/util/HashMap;)V

    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mob/wrappers/ShareSDKWrapper$2;->val$callback:Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;->onError(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method
