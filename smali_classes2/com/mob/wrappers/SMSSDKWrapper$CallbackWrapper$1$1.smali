.class Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;
.super Ljava/lang/Object;
.source "SMSSDKWrapper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;->afterEvent(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$event:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;IILjava/lang/Object;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;->this$1:Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;

    iput p2, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;->val$event:I

    iput p3, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;->val$result:I

    iput-object p4, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 122
    iget-object p1, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;->this$1:Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;

    iget-object p1, p1, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1;->this$0:Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;

    iget v0, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;->val$event:I

    iget v1, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;->val$result:I

    iget-object v2, p0, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper$1$1;->val$data:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/mob/wrappers/SMSSDKWrapper$CallbackWrapper;->afterEvent(IILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
