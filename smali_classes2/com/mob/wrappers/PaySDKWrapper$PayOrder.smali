.class public Lcom/mob/wrappers/PaySDKWrapper$PayOrder;
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
    name = "PayOrder"
.end annotation


# instance fields
.field private order:Lcom/mob/paysdk/PayOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/mob/wrappers/PaySDKWrapper$Order;-><init>()V

    .line 103
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/mob/paysdk/PayOrder;

    invoke-direct {v0}, Lcom/mob/paysdk/PayOrder;-><init>()V

    iput-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/mob/wrappers/PaySDKWrapper$PayOrder;)Lcom/mob/paysdk/PayOrder;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    return-object p0
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .line 135
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0}, Lcom/mob/paysdk/PayOrder;->getAmount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 179
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0}, Lcom/mob/paysdk/PayOrder;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 197
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0}, Lcom/mob/paysdk/PayOrder;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 1

    .line 211
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0}, Lcom/mob/paysdk/PayOrder;->getMetadata()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getOrderNo()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0}, Lcom/mob/paysdk/PayOrder;->getOrderNo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 157
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0}, Lcom/mob/paysdk/PayOrder;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTicketId()Ljava/lang/String;
    .locals 1

    .line 225
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0}, Lcom/mob/paysdk/PayOrder;->getTicketId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public setAmount(I)V
    .locals 1

    .line 147
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0, p1}, Lcom/mob/paysdk/PayOrder;->setAmount(I)V

    :cond_0
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0, p1}, Lcom/mob/paysdk/PayOrder;->setBody(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 205
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0, p1}, Lcom/mob/paysdk/PayOrder;->setDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMetadata(Ljava/lang/String;)V
    .locals 1

    .line 219
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0, p1}, Lcom/mob/paysdk/PayOrder;->setMetadata(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOrderNo(Ljava/lang/String;)V
    .locals 1

    .line 125
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0, p1}, Lcom/mob/paysdk/PayOrder;->setOrderNo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1

    .line 169
    invoke-static {}, Lcom/mob/wrappers/PaySDKWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/mob/wrappers/PaySDKWrapper$PayOrder;->order:Lcom/mob/paysdk/PayOrder;

    invoke-virtual {v0, p1}, Lcom/mob/paysdk/PayOrder;->setSubject(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
