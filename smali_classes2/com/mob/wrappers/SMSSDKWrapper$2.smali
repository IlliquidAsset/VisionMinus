.class final Lcom/mob/wrappers/SMSSDKWrapper$2;
.super Ljava/lang/Object;
.source "SMSSDKWrapper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/SMSSDKWrapper;->showVerificationPage(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;Ljava/lang/Throwable;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/mob/wrappers/SMSSDKWrapper$2;->val$handler:Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;

    iput-object p2, p0, Lcom/mob/wrappers/SMSSDKWrapper$2;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/mob/wrappers/SMSSDKWrapper$2;->val$handler:Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/mob/wrappers/SMSSDKWrapper$2;->val$t:Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v0, v1}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->afterEvent(IILjava/lang/Object;)V

    :cond_0
    return v0
.end method
