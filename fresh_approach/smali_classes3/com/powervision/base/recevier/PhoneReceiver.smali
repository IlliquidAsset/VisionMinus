.class public Lcom/powervision/base/recevier/PhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneReceiver.java"


# instance fields
.field private mPhoneListener:Lcom/powervision/base/listener/PhoneCallListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "phone"

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 23
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/recevier/PhoneReceiver;->mPhoneListener:Lcom/powervision/base/listener/PhoneCallListener;

    if-eqz p1, :cond_3

    .line 36
    invoke-interface {p1}, Lcom/powervision/base/listener/PhoneCallListener;->onOffHook()V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/recevier/PhoneReceiver;->mPhoneListener:Lcom/powervision/base/listener/PhoneCallListener;

    if-eqz p1, :cond_3

    .line 31
    invoke-interface {p1}, Lcom/powervision/base/listener/PhoneCallListener;->onRinging()V

    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/powervision/base/recevier/PhoneReceiver;->mPhoneListener:Lcom/powervision/base/listener/PhoneCallListener;

    if-eqz p1, :cond_3

    .line 26
    invoke-interface {p1}, Lcom/powervision/base/listener/PhoneCallListener;->onIDLE()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOnPhoneStateListener(Lcom/powervision/base/listener/PhoneCallListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/powervision/base/recevier/PhoneReceiver;->mPhoneListener:Lcom/powervision/base/listener/PhoneCallListener;

    return-void
.end method
