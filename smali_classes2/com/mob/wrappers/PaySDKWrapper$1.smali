.class final Lcom/mob/wrappers/PaySDKWrapper$1;
.super Ljava/lang/Object;
.source "PaySDKWrapper.java"

# interfaces
.implements Lcom/mob/paysdk/OnPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/PaySDKWrapper;->pay(Lcom/mob/wrappers/PaySDKWrapper$Order;ILcom/mob/wrappers/PaySDKWrapper$PayCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mob/wrappers/PaySDKWrapper$PayCallback;

.field final synthetic val$order:Lcom/mob/wrappers/PaySDKWrapper$Order;

.field final synthetic val$platform:I


# direct methods
.method constructor <init>(Lcom/mob/wrappers/PaySDKWrapper$PayCallback;Lcom/mob/wrappers/PaySDKWrapper$Order;I)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mob/wrappers/PaySDKWrapper$1;->val$callback:Lcom/mob/wrappers/PaySDKWrapper$PayCallback;

    iput-object p2, p0, Lcom/mob/wrappers/PaySDKWrapper$1;->val$order:Lcom/mob/wrappers/PaySDKWrapper$Order;

    iput p3, p0, Lcom/mob/wrappers/PaySDKWrapper$1;->val$platform:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayEnd(Lcom/mob/paysdk/PayResult;Ljava/lang/Object;Lcom/mob/paysdk/MobPayAPI;)V
    .locals 1

    .line 87
    iget-object p2, p0, Lcom/mob/wrappers/PaySDKWrapper$1;->val$callback:Lcom/mob/wrappers/PaySDKWrapper$PayCallback;

    if-eqz p2, :cond_0

    .line 88
    iget-object p3, p0, Lcom/mob/wrappers/PaySDKWrapper$1;->val$order:Lcom/mob/wrappers/PaySDKWrapper$Order;

    iget v0, p0, Lcom/mob/wrappers/PaySDKWrapper$1;->val$platform:I

    invoke-virtual {p1}, Lcom/mob/paysdk/PayResult;->ordinal()I

    move-result p1

    invoke-interface {p2, p3, v0, p1}, Lcom/mob/wrappers/PaySDKWrapper$PayCallback;->onPayEnd(Lcom/mob/wrappers/PaySDKWrapper$Order;II)V

    :cond_0
    return-void
.end method

.method public onWillPay(Ljava/lang/String;Ljava/lang/Object;Lcom/mob/paysdk/MobPayAPI;)Z
    .locals 1

    .line 83
    iget-object p2, p0, Lcom/mob/wrappers/PaySDKWrapper$1;->val$callback:Lcom/mob/wrappers/PaySDKWrapper$PayCallback;

    iget-object p3, p0, Lcom/mob/wrappers/PaySDKWrapper$1;->val$order:Lcom/mob/wrappers/PaySDKWrapper$Order;

    iget v0, p0, Lcom/mob/wrappers/PaySDKWrapper$1;->val$platform:I

    invoke-interface {p2, p3, v0, p1}, Lcom/mob/wrappers/PaySDKWrapper$PayCallback;->onWillPay(Lcom/mob/wrappers/PaySDKWrapper$Order;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method
