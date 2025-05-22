.class public Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;
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
    name = "MobPushNotifyMessageWrapper"
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

.field private inboxStyleContent:[Ljava/lang/String;

.field private light:Z

.field private messageId:Ljava/lang/String;

.field private shake:Z

.field private style:I

.field private styleContent:Ljava/lang/String;

.field private timestamp:J

.field private title:Ljava/lang/String;

.field private voice:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 426
    iput-boolean v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->voice:Z

    .line 427
    iput-boolean v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->shake:Z

    .line 428
    iput-boolean v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->light:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JZZZ)V"
        }
    .end annotation

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 426
    iput-boolean v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->voice:Z

    .line 427
    iput-boolean v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->shake:Z

    .line 428
    iput-boolean v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->light:Z

    .line 436
    iput p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->style:I

    .line 437
    iput-object p2, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->title:Ljava/lang/String;

    .line 438
    iput-object p3, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->content:Ljava/lang/String;

    .line 439
    iput-object p4, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->styleContent:Ljava/lang/String;

    .line 440
    iput-object p5, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->inboxStyleContent:[Ljava/lang/String;

    .line 441
    iput-object p6, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->extrasMap:Ljava/util/HashMap;

    .line 442
    iput-object p7, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->messageId:Ljava/lang/String;

    .line 443
    iput-wide p8, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->timestamp:J

    .line 444
    iput-boolean p10, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->voice:Z

    .line 445
    iput-boolean p11, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->shake:Z

    .line 446
    iput-boolean p12, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->light:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->content:Ljava/lang/String;

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

    .line 608
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->extrasMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getInboxStyleContent()[Ljava/lang/String;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->inboxStyleContent:[Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .line 554
    iget v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->style:I

    return v0
.end method

.method public getStyleContent()Ljava/lang/String;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->styleContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 626
    iget-wide v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isLight()Z
    .locals 1

    .line 581
    iget-boolean v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->light:Z

    return v0
.end method

.method public isShake()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->shake:Z

    return v0
.end method

.method public isVoice()Z
    .locals 1

    .line 563
    iget-boolean v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->voice:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->content:Ljava/lang/String;

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

    .line 536
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->extrasMap:Ljava/util/HashMap;

    return-void
.end method

.method public setInboxStyleContent([Ljava/lang/String;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->inboxStyleContent:[Ljava/lang/String;

    return-void
.end method

.method public setLight(Z)V
    .locals 0

    .line 473
    iput-boolean p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->light:Z

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setShake(Z)V
    .locals 0

    .line 482
    iput-boolean p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->shake:Z

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .line 491
    iput p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->style:I

    return-void
.end method

.method public setStyleContent(Ljava/lang/String;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->styleContent:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 545
    iput-wide p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->timestamp:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->title:Ljava/lang/String;

    return-void
.end method

.method public setVoice(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;->voice:Z

    return-void
.end method
