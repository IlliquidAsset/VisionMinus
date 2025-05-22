.class final Lcom/mob/wrappers/SMSSDKWrapper$1;
.super Ljava/lang/Object;
.source "SMSSDKWrapper.java"

# interfaces
.implements Lcn/smssdk/OnSendMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/SMSSDKWrapper;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcom/mob/wrappers/SMSSDKWrapper$BeforeSendMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/mob/wrappers/SMSSDKWrapper$BeforeSendMessage;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/SMSSDKWrapper$BeforeSendMessage;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mob/wrappers/SMSSDKWrapper$1;->val$listener:Lcom/mob/wrappers/SMSSDKWrapper$BeforeSendMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mob/wrappers/SMSSDKWrapper$1;->val$listener:Lcom/mob/wrappers/SMSSDKWrapper$BeforeSendMessage;

    invoke-interface {v0, p1, p2}, Lcom/mob/wrappers/SMSSDKWrapper$BeforeSendMessage;->beforeSendMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
