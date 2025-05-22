.class Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;
.super Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;
.source "MobPushWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/wrappers/MobPushWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobPushLocalNotificationWrapper"
.end annotation


# instance fields
.field private notificationId:I

.field final synthetic this$0:Lcom/mob/wrappers/MobPushWrapper;


# direct methods
.method public constructor <init>(Lcom/mob/wrappers/MobPushWrapper;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->this$0:Lcom/mob/wrappers/MobPushWrapper;

    invoke-direct {p0}, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mob/wrappers/MobPushWrapper;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JZZZ)V
    .locals 14
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

    move-object v13, p0

    move-object v0, p1

    .line 656
    iput-object v0, v13, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->this$0:Lcom/mob/wrappers/MobPushWrapper;

    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 657
    invoke-direct/range {v0 .. v12}, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JZZZ)V

    return-void
.end method


# virtual methods
.method public getNotificationId()I
    .locals 1

    .line 676
    iget v0, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->notificationId:I

    return v0
.end method

.method public setNotificationId(I)V
    .locals 0

    .line 666
    iput p1, p0, Lcom/mob/wrappers/MobPushWrapper$MobPushLocalNotificationWrapper;->notificationId:I

    return-void
.end method
