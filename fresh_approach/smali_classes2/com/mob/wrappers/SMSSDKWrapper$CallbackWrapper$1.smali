.class Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;
.super Lcn/smssdk/EventHandler;
.source "SMSSDKWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;->this$0:Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;

    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 1

    .line 120
    new-instance v0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;-><init>(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;IILjava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    return-void
.end method
