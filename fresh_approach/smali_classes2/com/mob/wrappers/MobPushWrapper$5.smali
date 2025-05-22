.class final Lcom/mob/wrappers/MobPushWrapper$5;
.super Ljava/lang/Object;
.source "MobPushWrapper.java"

# interfaces
.implements Lcom/mob/pushsdk/MobPushCustomNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/MobPushWrapper;->setCustomNotification(Lcom/mob/wrappers/MobPushWrapper$MobPushCustomNotificationWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$wrapper:Lcom/mob/wrappers/MobPushWrapper$MobPushCustomNotificationWrapper;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/MobPushWrapper$MobPushCustomNotificationWrapper;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$5;->val$wrapper:Lcom/mob/wrappers/MobPushWrapper$MobPushCustomNotificationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotification(Landroid/content/Context;Landroid/app/NotificationManager;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;ZZZ)Landroid/app/Notification;
    .locals 16

    move-object/from16 v0, p0

    .line 304
    :try_start_0
    iget-object v1, v0, Lcom/mob/wrappers/MobPushWrapper$5;->val$wrapper:Lcom/mob/wrappers/MobPushWrapper$MobPushCustomNotificationWrapper;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-interface/range {v1 .. v15}, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomNotificationWrapper;->getNotification(Landroid/content/Context;Landroid/app/NotificationManager;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;ZZZ)Landroid/app/Notification;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 307
    :catchall_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    return-object v1
.end method
