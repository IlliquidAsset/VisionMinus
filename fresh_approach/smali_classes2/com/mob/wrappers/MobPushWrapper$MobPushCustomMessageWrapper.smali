.class public Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;
.super Ljava/lang/Object;
.source "MobPushWrapper.java"

# interfaces
.implements Lcom/mob/tools/proguard/ClassKeeper;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/MobPushWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobPushCustomMessageWrapper"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private extrasMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messageId:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->content:Ljava/lang/String;

    .line 367
    iput-object p2, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->extrasMap:Ljava/util/HashMap;

    .line 368
    iput-object p3, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->messageId:Ljava/lang/String;

    .line 369
    iput-wide p4, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->timestamp:J

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExtrasMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->extrasMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 413
    iget-wide v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->timestamp:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->content:Ljava/lang/String;

    return-void
.end method

.method public setExtrasMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->extrasMap:Ljava/util/HashMap;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 385
    iput-wide p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;->timestamp:J

    return-void
.end method
