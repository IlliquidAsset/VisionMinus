.class public Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;
.super Lcom/mob/wrappers/PaySDKWrapper$Order;
.source "PaySDKWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/PaySDKWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TicketOrder"
.end annotation


# instance fields
.field private order:Lcom/mob/paysdk/TicketOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 236
    invoke-direct {p0}, Lcom/mob/wrappers/PaySDKWrapper$Order;-><init>()V

    .line 237
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lcom/mob/paysdk/TicketOrder;

    invoke-direct {v0}, Lcom/mob/paysdk/TicketOrder;-><init>()V

    iput-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;->order:Lcom/mob/paysdk/TicketOrder;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;)Lcom/mob/paysdk/TicketOrder;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;->order:Lcom/mob/paysdk/TicketOrder;

    return-object p0
.end method


# virtual methods
.method public getTicketId()Ljava/lang/String;
    .locals 1

    .line 257
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;->order:Lcom/mob/paysdk/TicketOrder;

    invoke-virtual {v0}, Lcom/mob/paysdk/TicketOrder;->getTicketId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public setTicketId(Ljava/lang/String;)V
    .locals 1

    .line 247
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$TicketOrder;->order:Lcom/mob/paysdk/TicketOrder;

    invoke-virtual {v0, p1}, Lcom/mob/paysdk/TicketOrder;->setTicketId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
