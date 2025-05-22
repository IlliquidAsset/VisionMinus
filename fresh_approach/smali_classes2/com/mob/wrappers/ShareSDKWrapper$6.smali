.class final Lcom/mob/wrappers/ShareSDKWrapper$6;
.super Ljava/lang/Object;
.source "ShareSDKWrapper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/ShareSDKWrapper;->share(Ljava/lang/String;Ljava/util/HashMap;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;

.field final synthetic val$platform:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/mob/wrappers/ShareSDKWrapper$6;->val$platform:Ljava/lang/String;

    iput-object p2, p0, Lcom/mob/wrappers/ShareSDKWrapper$6;->val$callback:Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 185
    new-instance p1, Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "platform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/wrappers/ShareSDKWrapper$6;->val$platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not exist or disable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/mob/wrappers/ShareSDKWrapper$6;->val$callback:Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;

    iget-object v1, p0, Lcom/mob/wrappers/ShareSDKWrapper$6;->val$platform:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, p1}, Lcom/mob/wrappers/ShareSDKWrapper$CallbackWrapper;->onError(Ljava/lang/String;ILjava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
